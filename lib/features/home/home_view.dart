import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Obx(
            () => ListView.builder(
          itemCount: controller.books.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.books[index]),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // As a placeholder action, add another book to the list
          controller.addBook('Book ${controller.books.length + 1}');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
