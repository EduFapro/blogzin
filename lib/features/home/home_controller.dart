import 'package:get/get.dart';

class HomeController extends GetxController {
  // An observable list of book titles as a placeholder
  var books = ['Book 1', 'Book 2', 'Book 3'].obs;

  void addBook(String bookTitle) {
    books.add(bookTitle);
  }

  @override
  void onInit() {
    super.onInit();
    // Initialize anything here if needed
  }
}
