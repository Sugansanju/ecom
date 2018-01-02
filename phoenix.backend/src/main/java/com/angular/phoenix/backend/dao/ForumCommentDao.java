package com.angular.phoenix.backend.dao;

import java.util.List;

import com.angular.phoenix.backend.model.ForumComment;

public interface ForumCommentDao {
	public boolean saveForumComment(ForumComment forumComment);

	public boolean deleteForumComment(ForumComment forumComment);

	public boolean updateForumComment(ForumComment  forumComment);

	public ForumComment getForumComment(int fComment);

	public List<ForumComment> getAllForumComment();
	
}
