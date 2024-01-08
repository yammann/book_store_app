import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/home_view_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeAppBar(),
        HomeListView()
      ],
    );
  }
}

