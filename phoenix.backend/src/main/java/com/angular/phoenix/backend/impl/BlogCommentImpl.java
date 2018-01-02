package com.angular.phoenix.backend.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.angular.phoenix.backend.dao.BlogCommentDao;
import com.angular.phoenix.backend.model.BlogComment;
@Repository("blogCommentDAO")
public class BlogCommentImpl implements BlogCommentDao {

	public boolean saveBlogComment(BlogComment blogComment) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteBlogComment(BlogComment blogComment) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateBlogComment(BlogComment blogComment) {
		// TODO Auto-generated method stub
		return false;
	}

	public BlogComment getBlogComment(int blogCommentId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<BlogComment> getAllBlogComment() {
		// TODO Auto-generated method stub
		return null;
	}

}
