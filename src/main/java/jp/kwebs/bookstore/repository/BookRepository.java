package jp.kwebs.bookstore.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import jp.kwebs.bookstore.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
	List<Book> findAll(Sort sort);
}
