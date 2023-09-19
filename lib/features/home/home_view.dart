import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.redAccent,
                height: screenHeight * 0.3,
                width: screenWidth * 0.65,
              ),
              SizedBox(
                height: screenHeight * 0.13,
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.redAccent,
                height: screenHeight * 0.3,
                width: screenWidth * 0.65,
              ),
              SizedBox(
                height: screenHeight * 0.13,
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.redAccent,
                height: screenHeight * 0.3,
                width: screenWidth * 0.65,
              ),
              SizedBox(
                height: screenHeight * 0.13,
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.redAccent,
                height: screenHeight * 0.3,
                width: screenWidth * 0.65,
              ),
            ],
          ),
        ),
      ),
      // body: Obx(
      //       () => ListView.builder(
      //     itemCount: controller.books.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         title: Text(controller.books[index]),
      //       );
      //     },
      //   ),
      // ),
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
