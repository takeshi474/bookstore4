//package jp.kwebs.bookstore.config;
//
//import java.time.LocalDate;
//import java.util.List;
//
//import org.springframework.boot.CommandLineRunner;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//
//import jp.kwebs.bookstore.entity.Book;
//import jp.kwebs.bookstore.service.BookService;
//
//@Configuration
//public class DatabaseInitializer {
//	
//	@Bean
//	CommandLineRunner init(BookService bs) {
//		CommandLineRunner clr = s->bs.createAllBooks(getBooks());
//		return clr;
//	}
//	
//	List<Book> getBooks() {
//		var list = List.of(
//				new Book(null,"情報倫理", LocalDate.of(2015, 3, 10),3500, List.of("印刷本", "電子本", "オーディオブック")),
//				new Book(null, "ネットワーク基礎", LocalDate.of(2016, 4, 20), 3200, List.of("印刷本", "電子本")),
//				new Book(null, "わかりやすいJava", LocalDate.of(2020, 4, 15), 3200, List.of("印刷本", "電子本")),
//				new Book(null, "Spring Boot入門", LocalDate.of(2022, 6, 20), 3800, List.of("印刷本", "電子本", "オーディオブック")),
//				new Book(null, "はじめてのデータベース", LocalDate.of(2019, 9, 5), 2800, List.of("印刷本")),
//				new Book(null, "Javaプログラミング実践", LocalDate.of(2021, 11, 12), 4200, List.of("印刷本", "電子本")),
//				new Book(null, "Webアプリケーション開発入門", LocalDate.of(2023, 2, 28), 3600, List.of("電子本", "オーディオブック")),
//				new Book(null, "アルゴリズムとデータ構造", LocalDate.of(2018, 7, 1), 4500, List.of("印刷本", "電子本")),
//				new Book(null, "HTMLとCSSの基本", LocalDate.of(2024, 1, 18), 2500, List.of("印刷本", "電子本", "オーディオブック")),
//				new Book(null, "Gitではじめるチーム開発", LocalDate.of(2020, 10, 30), 3000, List.of("電子本")),
//				new Book(null, "オブジェクト指向プログラミング", LocalDate.of(2017, 5, 22), 3900, List.of("印刷本", "電子本")),
//				new Book(null, "データ構造の教科書", LocalDate.of(2016, 8, 8), 3400, List.of("印刷本")),
//				new Book(null, "Webデザインの基礎", LocalDate.of(2021, 3, 25), 2900, List.of("印刷本", "電子本")),
//				new Book(null, "プログラマーのためのSQL", LocalDate.of(2022, 12, 5), 4100, List.of("印刷本", "電子本", "オーディオブック")),
//				new Book(null, "システム開発入門", LocalDate.of(2018, 11, 15), 3300, List.of("印刷本", "電子本"))
//				);
//				return list;
//	}
//}
