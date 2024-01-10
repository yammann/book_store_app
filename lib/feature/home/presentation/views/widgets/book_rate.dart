import 'package:book_store_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 248, 223, 2),
          size: 16,
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
    );
  }
}
