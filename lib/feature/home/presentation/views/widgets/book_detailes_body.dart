import 'package:book_store_app/core/utils/style.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/book_detailes.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/book_detailes_appbar.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/similler_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailesBody extends StatelessWidget {
  const BookDetailesBody({super.key, required this.bookModel});
  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 24,
              right: 24,
            ),
            child: Column(
              children: [
                const BookDetailesAppbar(),
                BookDetailes(bookModel: bookModel),
                const SizedBox(
                  height: 40,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You Can Also Like",
                    style: Styles.textStyle20,
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 150, child: SimillerBooksListView()),
        )
      ],
    );
  }
}
