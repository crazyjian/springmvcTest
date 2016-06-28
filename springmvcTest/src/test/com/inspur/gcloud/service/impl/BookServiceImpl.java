package com.inspur.gcloud.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.inspur.gcloud.data.Book;
import com.inspur.gcloud.data.Category;
import com.inspur.gcloud.service.BookService;

@Service
public class BookServiceImpl implements BookService {
	
	private List<Category> categories;
	private List<Book> books;
	
	public BookServiceImpl() {
		categories = new ArrayList<Category>();
		Category category1 = new Category(1,"Computing"); 
		Category category2 = new Category(2,"Maths"); 
		Category category3 = new Category(3,"English"); 
		categories.add(category1);
		categories.add(category2);
		categories.add(category3);
		
		books = new ArrayList<Book>();
		books.add(new Book(1L,"4352345234","Servlet $ JSP :A TUTORIL",category1,"fwefwefwe"));
		books.add(new Book(2L,"2432423234","java",category2,"fwefwefwe"));
		books.add(new Book(3L,"6436345645","C#",category3,"fwefwefwe"));
	}

	@Override
	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category getCatrgory(int id) {
		// TODO Auto-generated method stub
		for (Category category : categories) {
			if(id == category.getId()) {
				return category;
			}
		}
		return null;
	}

	@Override
	public List<Book> getAllBooks() {
		// TODO Auto-generated method stub
		return books;
	}

	@Override
	public Book save(Book book) {
		// TODO Auto-generated method stub
		book.setId(getNextId());
		books.add(book);
		return book;
	}

	@Override
	public Book update(Book book) {
		// TODO Auto-generated method stub
		int bookCount = books.size();
		for (int i=0; i<bookCount; i++) {
			Book savedBook = books.get(i);
			if(savedBook.getId() == book.getId()) {
				books.set(i, book);
				return book;
			}
		}
		return book;
	}

	@Override
	public Book get(Long id) {
		// TODO Auto-generated method stub
		for(Book book : books) {
			if(id == book.getId()) {
				return book;
			}
		}
		return null;
	}

	@Override
	public long getNextId() {
		// TODO Auto-generated method stub
		long id = 0L;
		for(Book book : books) {
			long bookId = book.getId();
			if(bookId > id) {
				id = bookId;
			}
		}
		return id+1;
	}

}
