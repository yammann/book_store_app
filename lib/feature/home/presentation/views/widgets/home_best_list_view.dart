import 'package:book_store_app/feature/home/presentation/views/widgets/home_best_list_item.dart';
import 'package:flutter/material.dart';

class HomeBestListView extends StatelessWidget {
  const HomeBestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => const HomeBestListItem(),
      padding: EdgeInsets.zero,
    );
  }
}