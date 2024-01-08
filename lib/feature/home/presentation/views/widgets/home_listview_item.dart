import 'package:flutter/material.dart';

class HomeListViewItem extends StatelessWidget {
  const HomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        margin: EdgeInsets.all(5),
        height: 250,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/lion.jpeg"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
