package com.angular.phoenix.backend.dao;

import java.util.List;

import com.angular.phoenix.backend.model.Blog;

public interface BlogDao {
	public boolean addBlog(Blog blog);
	public boolean updateBlog(Blog blog);
	public boolean deleteBlog(Blog blog);
	public Blog getBlog(int blogId);
	public List<Blog> getAllBlogs();
	public boolean approveBlog(Blog blog);

}
