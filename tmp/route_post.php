<?php

!defined('DEBUG') AND exit('Access Denied.');

$action = param(1);

user_login_check();



if($action == 'create') {
	
	$tid = param(2);
	$quick = param(3);
	$quotepid = param(4);
		
	$thread = thread_read($tid);
	empty($thread) AND message(-1, lang('thread_not_exists'));
	
	$fid = $thread['fid'];
	
	$forum = forum_read($fid);
	empty($forum) AND message(-1, lang('forum_not_exists'));
	
	$r = forum_access_user($fid, $gid, 'allowpost');
	if(!$r) {
		message(-1, lang('user_group_insufficient_privilege'));
	}
	
	($thread['closed'] && ($gid == 0 || $gid > 5)) AND message(-1, lang('thread_has_already_closed'));
	
	
		// todo:
		$tagids = tag_thread_find_tagid_by_tid($tid);

	
	if($method == 'GET') {
		
		
		
		$header['title'] = lang('post_create');
		$header['mobile_title'] = lang('post_create');
		$header['mobile_link'] = url("thread-$tid");

		include _include(APP_PATH.'view/htm/post.htm');
		
	} else {
		
		
		
		$message = param('message', '', FALSE);
		empty($message) AND message('message', lang('please_input_message'));
		
		$doctype = param('doctype', 0);
		xn_strlen($message) > 2028000 AND message('message', lang('message_too_long'));
		
		$thread['top'] > 0 AND thread_top_cache_delete();
		
		$quotepid = param('quotepid', 0);
		$quotepost = post__read($quotepid);
		(!$quotepost || $quotepost['tid'] != $tid) AND $quotepid = 0;
		
		$post = array(
			'tid'=>$tid,
			'uid'=>$uid,
			'create_date'=>$time,
			'userip'=>$longip,
			'isfirst'=>0,
			'doctype'=>$doctype,
			'quotepid'=>$quotepid,
			'message'=>$message,
		);
		$pid = post_create($post, $fid, $gid);
		empty($pid) AND message(-1, lang('create_post_failed'));
		
		// thread_top_create($fid, $tid);

		$post = post_read($pid);
		$post['floor'] = $thread['posts'] + 2;
		$postlist = array($post);
		
		$allowpost = forum_access_user($fid, $gid, 'allowpost');
		$allowupdate = forum_access_mod($fid, $gid, 'allowupdate');
		$allowdelete = forum_access_mod($fid, $gid, 'allowdelete');
		
		
		
		// 直接返回帖子的 html
		// return the html string to browser.
		$return_html = param('return_html', 0);
		if($return_html) {
			$filelist = array();
			ob_start();
			include _include(APP_PATH.'view/htm/post_list.inc.htm');
			$s = ob_get_clean();
						
			message(0, $s);
		} else {
			message(0, lang('create_post_sucessfully'));
		}
	
	}
	
} elseif($action == 'update') {

	$pid = param(2);
	$post = post_read($pid);
	empty($post) AND message(-1, lang('post_not_exists:'));
	
	$tid = $post['tid'];
	$thread = thread_read($tid);
	empty($thread) AND message(-1, lang('thread_not_exists:'));
	
	$fid = $thread['fid'];
	$forum = forum_read($fid);
	empty($forum) AND message(-1, lang('forum_not_exists:'));
	
	$isfirst = $post['isfirst'];
	
	!forum_access_user($fid, $gid, 'allowpost') AND message(-1, lang('user_group_insufficient_privilege'));
	$allowupdate = forum_access_mod($fid, $gid, 'allowupdate');
	!$allowupdate AND !$post['allowupdate'] AND message(-1, lang('have_no_privilege_to_update'));
	!$allowupdate AND $thread['closed'] AND message(-1, lang('thread_has_already_closed'));
	
	
	
	if($method == 'GET') {
		
		
		
		$forumlist_allowthread = forum_list_access_filter($forumlist, $gid, 'allowthread');
		$forumarr = xn_json_encode(arrlist_key_values($forumlist_allowthread, 'fid', 'name'));
		
		// 如果为数据库减肥，则 message 可能会被设置为空。
		// if lost weight for the database, set the message field empty.
		$post['message'] = htmlspecialchars($post['message'] ? $post['message'] : $post['message_fmt']);
		
		$attachlist = $imagelist = $filelist = array();
		if($post['files']) {
			list($attachlist, $imagelist, $filelist) = attach_find_by_pid($pid);
		}
		
		
		// todo:
		$tagids = tag_thread_find_tagid_by_tid($tid);
				
			// 编辑器支持 HTML 编辑
			if($post['doctype'] == 1) {
				$post['message'] = htmlspecialchars($post['message_fmt']);
			}
		
		include _include(APP_PATH.'view/htm/post.htm');
		
	} elseif($method == 'POST') {
		
		$subject = htmlspecialchars(param('subject', '', FALSE));
		$message = param('message', '', FALSE);
		$doctype = param('doctype', 0);
		
		
		
		empty($message) AND message('message', lang('please_input_message'));
		mb_strlen($message, 'UTF-8') > 2048000 AND message('message', lang('message_too_long'));
		
		$arr = array();
		if($isfirst) {
			$newfid = param('fid');
			$forum = forum_read($newfid);
			empty($forum) AND message('fid', lang('forum_not_exists'));
			
			if($fid != $newfid) {
				!forum_access_user($fid, $gid, 'allowthread') AND message(-1, lang('user_group_insufficient_privilege'));
				$post['uid'] != $uid AND !forum_access_mod($fid, $gid, 'allowupdate') AND message(-1, lang('user_group_insufficient_privilege'));
				$arr['fid'] = $newfid;
			}
			if($subject != $thread['subject']) {
				mb_strlen($subject, 'UTF-8') > 80 AND message('subject', lang('subject_max_length', array('max'=>80)));
				$arr['subject'] = $subject;
			}
			$arr AND thread_update($tid, $arr) === FALSE AND message(-1, lang('update_thread_failed'));
		}
		$r = post_update($pid, array('doctype'=>$doctype, 'message'=>$message));
		$r === FALSE AND message(-1, lang('update_post_failed'));
		
		
		// todo:
		/*
		$tag_cate_id_arr = param('tag_cate_id', array(0));
		
		
		$tagids_new = array_values($tag_cate_id_arr);
		$tagids_old = tag_thread_find_tagid_by_tid($tid);
		//print_r($tagids_new);print_r($tagids_old);exit;
		//新增的、删除的 
		$tag_id_delete = array_diff($tagids_old, $tagids_new);
		$tag_id_add = array_diff($tagids_new, $tagids_old);
		foreach($tag_id_delete as $tagid) {
			tag_thread_delete($tagid, $tid);
		}
		foreach($tag_id_add as $tagid) {
			tag_thread_create($tagid, $tid);
		}
		thread_update($tid, array('tagids'=>'', 'tagids_time'=>0));

		*/
		
		if($isfirst) {
			$tagids = param('tagid', array(0));
			$tagcatemap = $forum['tagcatemap'];
			foreach($forum['tagcatemap'] as $cate) {
				$defaulttagid = $cate['defaulttagid'];
				$isforce = $cate['isforce'];
				$catetags = array_keys($cate['tagmap']);
				$intersect = array_intersect($catetags, $tagids); // 比较数组交集
				// 判断是否强制
				if($isforce) {
					if(empty($intersect)) {
						message(-1, '请选择 ['.$cate['name'].']');
					}
				}
				// 判断是否默认
				if($defaulttagid) {
					if(empty($intersect)) {
						array_push($tagids, $defaulttagid);
					}
				}
				
			}
			
			$tagids = array_diff($tagids, array(0));
			$tagids_new = $tagids;
			$tagids_old = tag_thread_find_tagid_by_tid($tid);
			$tag_id_delete = array_diff($tagids_old, $tagids_new);
			$tag_id_add = array_diff($tagids_new, $tagids_old);
			if($tag_id_delete) {
				foreach($tag_id_delete as $tagid) {
					$tagid AND tag_thread_delete($tagid, $tid);
				}
			}
			if($tag_id_add) {
				foreach($tag_id_add as $tagid) {
					$tagid AND tag_thread_create($tagid, $tid);
				}
			}
			thread_update($tid, array('tagids'=>'', 'tagids_time'=>0));
			/*
			foreach($tagids as $tagid) {
				$tagid AND tag_thread_create($tagid, $tid);
			}*/
		}

		
		message(0, lang('update_successfully'));
		//message(0, array('pid'=>$pid, 'subject'=>$subject, 'message'=>$message));
	}
	
} elseif($action == 'delete') {

	$pid = param(2, 0);
	
	
	
	if($method != 'POST') message(-1, lang('method_error'));
	
	$post = post_read($pid);
	empty($post) AND message(-1, lang('post_not_exists'));
	
	$tid = $post['tid'];
	$thread = thread_read($tid);
	empty($thread) AND message(-1, lang('thread_not_exists'));
	
	$fid = $thread['fid'];
	$forum = forum_read($fid);
	empty($forum) AND message(-1, lang('forum_not_exists'));
	
	$isfirst = $post['isfirst'];
	
	!forum_access_user($fid, $gid, 'allowpost') AND message(-1, lang('user_group_insufficient_privilege'));
	$allowdelete = forum_access_mod($fid, $gid, 'allowdelete');
	!$allowdelete AND !$post['allowdelete'] AND message(-1, lang('insufficient_delete_privilege'));
	!$allowdelete AND $thread['closed'] AND message(-1, lang('thread_has_already_closed'));
	
	

	if($isfirst) {
		thread_delete($tid);
	} else {
		post_delete($pid);
		//post_list_cache_delete($tid);
	}
	
	
	
	message(0, lang('delete_successfully'));

}



?>