package jp.kwebs.bookstore.controller;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.data.domain.Pageable;

import jakarta.validation.Valid;
import jp.kwebs.bookstore.entity.Book;
import jp.kwebs.bookstore.form.BookForm;
import jp.kwebs.bookstore.service.BookService;

@Controller
@RequestMapping("/book")
public class BookstoreController {
	
	private BookService bs;
	public BookstoreController(BookService bs) {
		this.bs = bs;
	}
	
	@GetMapping("/list")
	public String listing(
			@RequestParam(name = "sort", defaultValue = "idAsc") String sort,
			@RequestParam(name = "page", defaultValue = "0") int page,
			@RequestParam(name = "size", defaultValue = "10") int size,
			@RequestParam(name = "keyword", defaultValue = "") String keyword,
			Model model){
		
		Sort sortOption;

		if (sort.equals("priceDesc")) {
		    sortOption = Sort.by("price").descending();
		} else if (sort.equals("priceAsc")) {
		    sortOption = Sort.by("price").ascending();
		} else if (sort.equals("dateDesc")) {
		    sortOption = Sort.by("date").descending();
		} else if (sort.equals("dateAsc")) {
		    sortOption = Sort.by("date").ascending();
		} else if (sort.equals("idDesc")) {
		    sortOption = Sort.by("id").descending();
		} else {
		    sortOption = Sort.by("id").ascending();
		}
		
		Pageable pageable = PageRequest.of(page, size, sortOption);

		Page<Book> books;

		if (keyword.isBlank()) {
		    books = bs.readBooks(pageable);
		} else {
		    books = bs.searchBooks(keyword, pageable);
		}
		
		int totalPages = books.getTotalPages();

		int startPage = 0;
		int endPage = -1;

		if (totalPages > 0) {
		    if (page < 5) {
		        startPage = 0;
		        endPage = Math.min(9, totalPages - 1);
		    } else if (page > totalPages - 6) {
		        startPage = Math.max(0, totalPages - 10);
		        endPage = totalPages - 1;
		    } else {
		        startPage = page - 5;
		        endPage = page + 5;
		    }
		}

		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("books", books);
		
		return "book-list";	
	}
	
	@GetMapping("/create")
	public String bookForm(Model model) {
		model.addAttribute("bookForm", new BookForm());
		return "book-create";
	}
	
	@PostMapping("/create")
	public String create(@Valid BookForm bookForm, BindingResult result) {
		if(result.hasErrors()) {
			return "book-create";
		}
		bs.createBook(bookForm);
		return "redirect:/book/list";
	}
	
	@GetMapping("/{id}/edit")
	public String edit(@PathVariable Long id, Model model) {
		var book =bs.readBookById(id);
		model.addAttribute("bookForm", bs.toForm(book));
		return "book-edit";
	}
	
	@PostMapping("/edit")
	public String update(@Valid BookForm bookForm, BindingResult result) {
		if (result.hasErrors()) {
			return "book-edit";
		}
		bs.updateBook(bookForm);
		return "redirect:/book/list";
	}
	
	@GetMapping("/{id}/delete")
	public String delete(@PathVariable Long id) {
		bs.deleteBook(id);
		return "redirect:/book/list";
	}
}
