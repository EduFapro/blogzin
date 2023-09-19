import 'package:get/get.dart';
import '../features/home/home_binding.dart';
import '../features/home/home_view.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.home; // The initial route

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.book_detail,
    //   page: () => BookDetailView(),
    //   binding: BookDetailBinding(),
    // ),
    // Add other GetPage definitions for more routes
  ];
}
