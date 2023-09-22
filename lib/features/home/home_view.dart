import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/data/services/lista_livros_local.dart';
import 'home_controller.dart';
import 'meu_preview_livro.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final firstColumnWidth = screenWidth * 0.65;
    final secondColumnWidth = screenWidth * 0.24;
    final columnSpacing = (1 - firstColumnWidth + secondColumnWidth) / 4;
    final heightSpacing = screenHeight / 10;
    final headerWidth = screenWidth - columnSpacing * 2;
    final headerHeight = screenHeight * 0.25;

    return Scaffold(
      backgroundColor: Colors.black54,
      body: ScrollableTwoColumnLayout(
        header: MyHeader(height: headerHeight, width: headerWidth),
        screenWidth: screenWidth,
        screenHeight: screenHeight,
        children: [
          Container(width: screenWidth),
          ListView.separated(
            itemCount: listaLivros.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.redAccent,
                height: screenHeight * 0.3,
                width: firstColumnWidth,
                child: MeuPreviewLivro(livro: listaLivros[index]),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: screenHeight * 0.13,
              );
            },
          )

        ],
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

class MyHeader extends StatelessWidget {
  const MyHeader({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: height,
      width: width,
    );
  }
}

class ScrollableTwoColumnLayout extends StatelessWidget {
  ScrollableTwoColumnLayout({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.header,
    required this.children,
  });

  final double screenWidth;
  final double screenHeight;
  final Widget header;
  List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final firstColumnWidth = screenWidth * 0.65;
    final secondColumnWidth = screenWidth * 0.24;

    // Convert listaLivros to a list of widgets
    List<Widget> bookPreviews = List.generate(
      listaLivros.length,
          (index) => Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.redAccent,
            height: screenHeight * 0.3,
            width: firstColumnWidth,
            child: MeuPreviewLivro(livro: listaLivros[index]),
          ),
          SizedBox(
            height: screenHeight * 0.13,
          ),
        ],
      ),
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          header,
          Row(
            children: [
              Column(
                children: bookPreviews,
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              // Second column
              Container(
                color: Colors.redAccent,
                height: screenHeight * 0.9,
                width: secondColumnWidth,
              ),
              SizedBox(
                width: screenWidth * 0.01,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
