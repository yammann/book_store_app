import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/book_detailes_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BookDetailesView extends StatelessWidget {
   BookDetailesView({super.key});
  BookModel bookModel=Get.arguments;
  @override
  Widget build(BuildContext context) {
    return  BookDetailesBody(bookModel: bookModel,);
  }
}
