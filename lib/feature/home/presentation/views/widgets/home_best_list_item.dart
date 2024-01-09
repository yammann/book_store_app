import 'package:book_store_app/constants.dart';
import 'package:book_store_app/core/utils/style.dart';
import 'package:book_store_app/feature/home/presentation/views/book_detailes_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeBestListItem extends StatelessWidget {
  const HomeBestListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const BookDetailesView(),transition:Transition.fade );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
        child: SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/image/lion.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
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
                      "Lion Sessss Lion Sessss Lion ",
                      style:
                          Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "J.K Rowling",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "19.99 \$",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.w800),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Text(
                              " 4.8",
                              style: Styles.textStyle20,
                            ),
                            Text(
                              " (2390)",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
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
