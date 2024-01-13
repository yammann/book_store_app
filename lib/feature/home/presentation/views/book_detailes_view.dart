import 'package:book_store_app/core/utils/servise_located.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/home/data/repo/hom_repo_imple.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/book_detailes_body.dart';
import 'package:book_store_app/feature/home/presentation/views_model/similler_book_list_cubit/similler_books_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BookDetailesView extends StatelessWidget {
   const BookDetailesView({super.key, required this.bookModel});
  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
          create: (context) => SimillerBooksListCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchSimillerdBooks(category: bookModel?.volumeInfo?.categories?[0]??"programming"),
          child: BookDetailesBody(bookModel: bookModel),);
  }
}
