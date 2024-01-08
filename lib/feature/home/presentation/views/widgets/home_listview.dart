import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview_item.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20),
        itemBuilder: (context, index) {
        return HomeListViewItem();
      },),
    );
  }
}