package com.inspur.gcloud.service;

import java.util.List;

import com.inspur.gcloud.data.Book;
import com.inspur.gcloud.data.Category;

public interface BookService {
	
	List<Category> getAllCategories();
	Category getCatrgory(int id);
	List<Book> getAllBooks();
	Book save(Book book);
	Book update(Book book);
	Book get(Long id);
	long getNextId();
}
