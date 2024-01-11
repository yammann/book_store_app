import 'package:book_store_app/core/utils/style.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/book_detailes_appbar.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/book_rate.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/double_button_price_free.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview_item.dart';
import 'package:flutter/material.dart';

class BookDetailesBody extends StatelessWidget {
  const BookDetailesBody({super.key,required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          const BookDetailesAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .20),
            child:  HomeListViewItem(
              url:bookModel.volumeInfo!.imageLinks!.thumbnail!,
            ),
          ),
          const Text(
            "The Jungel Book",
            style: TextStyle(fontSize: 35),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            "Rudyard Kipling",
            style: TextStyle(fontSize: 20, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const BookRate(
            rate: 0,
            count: 0,
          ),
          const SizedBox(
            height: 30,
          ),
          const DoubleButtonPriceAndFree(),
          const Expanded(
              child: SizedBox(
            height: 30,
          )),
          const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "You Can Also Like",
                style: Styles.textStyle20,
                textAlign: TextAlign.left,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(height: 150, child: HomeBooksListView()),
        ],
      ),
    ));
  }
}
