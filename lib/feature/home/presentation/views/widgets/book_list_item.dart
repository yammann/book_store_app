import 'package:book_store_app/constants.dart';
import 'package:book_store_app/core/utils/style.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/home/presentation/views/book_detailes_view.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/book_rate.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BookListItem extends StatelessWidget {
   const BookListItem(
      {super.key, required this.bookModel,
      });
  final BookModel bookModel;
   final bool isHaveImage=true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.off(()=> BookDetailesView(bookModel: bookModel,), transition: Transition.fade,arguments: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
        child: SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             CostumBookImage(url:bookModel.volumeInfo!.imageLinks?.thumbnail==null?"https://via.placeholder.com/300"
             :
             bookModel.volumeInfo!.imageLinks!.thumbnail!
             ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.volumeInfo!.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                     Text(
                      bookModel.volumeInfo!.authors![0],
                      style: const TextStyle(color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.w800),
                        ),
                        BookRate(
                          rate: bookModel.volumeInfo!.averageRating??0,
                          count:  bookModel.volumeInfo!.ratingsCount??0,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
