<?php

!defined('DEBUG') AND exit('Access Denied.');



$sid = sess_start();

// 语言 / Language
$_SERVER['lang'] = $lang = include _include(APP_PATH."lang/$conf[lang]/bbs.php");

// 支持 Token 接口（token 与 session 双重登陆机制，方便 REST 接口设计，也方便 $_SESSION 使用）
// Support Token interface (token and session dual match, to facilitate the design of the REST interface, but also to facilitate the use of $_SESSION)
$uid = intval(_SESSION('uid'));
empty($uid) AND $uid = user_token_get() AND $_SESSION['uid'] = $uid;
$user = user_read($uid);

// 用户组 / Group
$gid = empty($user) ? 0 : intval($user['gid']);
$grouplist = group_list_cache();
$group = isset($grouplist[$gid]) ? $grouplist[$gid] : $grouplist[0];

// 版块 / Forum
$fid = 0;
$forumlist = forum_list_cache();
$forumlist_show = forum_list_access_filter($forumlist, $gid);	// 有权限查看的板块 / filter no permission forum
$forumarr = arrlist_key_values($forumlist_show, 'fid', 'name');

// 头部 header.inc.htm 
$header = array(
	'title'=>$conf['sitename'],
	'mobile_title'=>'',
	'mobile_link'=>'./',
	'keywords'=>'', // 搜索引擎自行分析 keywords, 自己指定没用 / Search engine automatic analysis of key words, so keep it empty.
	'description'=>strip_tags($conf['sitebrief']),
	'navs'=>array(),
);

// 运行时数据，存放于 cache_set() / runtime data
$runtime = runtime_init();

// 检测站点运行级别 / restricted access
check_runlevel();

// 全站的设置数据，站点名称，描述，关键词
// $setting = kv_get('setting');

$route = param(0, 'index');



if($method == 'POST') {
	
	if(param('anti_spam_key') != setting_get('anti_spam_key')) {
		message(-1, 'anti spam enabled');
	}
	// 检测 Referer
	$referer = _SERVER('HTTP_REFERER');
	$http_url_path = http_url_path();
	if($http_url_path != substr($referer, 0, strlen($http_url_path))) {
		message(-1, 'referer error');
	}
	
	
	$__anti_xss__post = _POST('__anti_xss__');
	$__anti_xss__cookie = _COOKIE('__anti_xss__');

	$__anti_xss_value = $__anti_xss__cookie;
	if($__anti_xss__cookie != $__anti_xss__post) {
		$__anti_xss_value = $__anti_xss__post;
	}

	$arr = explode('_', $__anti_xss_value);
	$__time = $arr[0];
	$__hash = $arr[1];

	if($time - $__time > 6 * 3600) {
		message(-1, '表单超过 6 个小时没有活动，请重新提交。');
	}

	if($__hash != md5($ip.$useragent.$conf['auth_key'].$__time)) {
		message(-1, '检测到不安全的 POST 提交，可以通过关闭防灌水插件(xn_antispawn)来解决此问题。');
	} else {
		//$_SESSION['__anti_xss__'] = '';
	}



	/*
	if(!($__anti_xss__post == $__anti_xss__cookie)) {
		message(-1, 'CSRF checked!');
	}
	*/
}



if(!defined('SKIP_ROUTE')) {
	
	// 按照使用的频次排序，增加命中率，提高效率
	// According to the frequency of the use of sorting, increase the hit rate, improve efficiency
	switch ($route) {
		
		case 'index': 	include _include(APP_PATH.'route/index.php'); 	break;
		case 'thread':	include _include(APP_PATH.'route/thread.php'); 	break;
		case 'forum': 	include _include(APP_PATH.'route/forum.php'); 	break;
		case 'user': 	include _include(APP_PATH.'route/user.php'); 	break;
		case 'my': 	include _include(APP_PATH.'route/my.php'); 	break;
		case 'attach': 	include _include(APP_PATH.'route/attach.php'); 	break;
		case 'post': 	include _include(APP_PATH.'route/post.php'); 	break;
		case 'mod': 	include _include(APP_PATH.'route/mod.php'); 	break;
		case 'browser': include _include(APP_PATH.'route/browser.php'); break;
		
		default: 
			
			include _include(APP_PATH.'route/index.php'); 	break;
			//http_404();
			/*
			!is_word($route) AND http_404();
			$routefile = _include(APP_PATH."route/$route.php");
			!is_file($routefile) AND http_404();
			include $routefile;
			*/
	}
}



?>