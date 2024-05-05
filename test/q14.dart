import 'package:test/test.dart';
import 'package:dart_course_test/q14/index.dart';

void main() {
  group('BookLibrary Class Tests', () {
    test('Add new book', () {
      var library = BookLibrary();
      var book =
          Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      library.addBook(book);
      expect(library.getAllBooks(), equals([book]));
    });

    test('Add duplicate book', () {
      var library = BookLibrary();
      var book1 =
          Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      var book2 =
          Book("the catcher in the rye", "J.D. Salinger", "Fiction", 1951);
      library.addBook(book1);
      library.addBook(book2);
      expect(library.getAllBooks(),
          equals([book1])); // Only one book should be added
    });

    test('Remove existing book', () {
      var library = BookLibrary();
      var book =
          Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      library.addBook(book);
      var removed = library.removeBook("The Catcher in the Rye");
      expect(removed, isTrue);
      expect(library.getAllBooks(), isEmpty);
    });

    test('Remove non-existing book', () {
      var library = BookLibrary();
      var book =
          Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      library.addBook(book);
      var removed = library.removeBook("To Kill a Mockingbird");
      expect(removed,
          isFalse); // Trying to remove a non-existing book should return false
      expect(library.getAllBooks(),
          equals([book])); // Library should remain unchanged
    });

    test('Search for existing book', () {
      var library = BookLibrary();
      var book1 =
          Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      var book2 = Book("To Kill a Mockingbird", "Harper Lee", "Fiction", 1960);
      library.addBook(book1);
      library.addBook(book2);
      var searchResults = library.searchBooks("Mockingbird");
      expect(searchResults,
          equals([book2])); // Searching for "Mockingbird" should return book2
    });

    test('Search for non-existing book', () {
      var library = BookLibrary();
      var book =
          Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      library.addBook(book);
      var searchResults = library.searchBooks("Harry Potter");
      expect(searchResults,
          isEmpty); // Searching for a non-existing book should return an empty list
    });

    test('Search term case-insensitive', () {
      var library = BookLibrary();
      var book =
          Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      library.addBook(book);
      var searchResults = library.searchBooks("catcher");
      expect(searchResults,
          equals([book])); // Search term should be case-insensitive
    });

    test('Get all books', () {
      var library = BookLibrary();
      var book1 =
          Book("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951);
      var book2 = Book("To Kill a Mockingbird", "Harper Lee", "Fiction", 1960);
      library.addBook(book1);
      library.addBook(book2);
      expect(library.getAllBooks(), equals([book1, book2]));
    });
  });
}
