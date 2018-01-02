package com.angular.phoenix.backend.dao;

import java.util.List;

import com.angular.phoenix.backend.model.BlogComment;

public interface BlogCommentDao {
	public boolean saveBlogComment(BlogComment blogComment);

	public boolean deleteBlogComment(BlogComment blogComment);

	public boolean updateBlogComment(BlogComment blogComment);

	public BlogComment getBlogComment(int blogCommentId);

	public List<BlogComment> getAllBlogComment();

}
