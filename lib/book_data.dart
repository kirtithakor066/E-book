import 'book_model.dart';

List<Book> _allBooks = [
  Book(
      name: "Keeper Lost.. ",
      author: "Shannon Messenger",
      coverImage: "images/klc.png",
      rating: 4.0),
  Book(
      name: "Recipie For a Per..",
      author: "Karma Brown",
      coverImage: "images/3.jfif",
      rating: 4.0),
  Book(
      name: "The Glass Hotel",
      author: "Emily St. John Mandel",
      coverImage: "images/4.jfif",
      rating: 4.0),
  Book(
      name: "Conjure Women",
      author: "Afia Atakora",
      coverImage: "images/0.jfif",
      rating: 4.0),
  Book(
      name: "Felix Ever After",
      author: "Kacen Callender",
      coverImage: "images/1.jfif",
      rating: 4.0),
  Book(
      name: "From The Ashes",
      author: "Jesse Thistle",
      coverImage: "images/2.jfif",
      rating: 4.0),
  Book(
      name: "City of Girls",
      author: "Elizabeth Gilbert",
      coverImage: "images/5.jfif",
      rating: 4.0),
  Book(
      name: "Everything I never..",
      author: "Cebste NG",
      coverImage: "images/6.jfif",
      rating: 4.0)
];

List<Book> _recentBooks = [
  Book(
      name: "Conjure Women",
      author: "Afia Atakora",
      coverImage: "images/0.jfif",
      rating: 4.0),
  Book(
      name: "Felix Ever After",
      author: "Kacen Callender",
      coverImage: "images/1.jfif",
      rating: 4.0),
];
List<Book> _findBooks = [
  Book(
      name: "Conjure Women",
      author: "Afia Atakora",
      coverImage: "images/0.jfif",
      rating: 4.0),
  Book(
      name: "Felix Ever After",
      author: "Kacen Callender",
      coverImage: "images/1.jfif",
      rating: 4.0),
  Book(
      name: "Everything I never..",
      author: "Cebste NG",
      coverImage: "images/6.jfif",
      rating: 4.0)
];

List<Book> get allBooks {
  return [..._allBooks];
}

List<Book> get recentBooks {
  return [..._recentBooks];
}
List<Book> get findBook {
  return [... _findBooks];
}