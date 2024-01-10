import 'package:book_store_app/core/utils/style.dart';
import 'package:book_store_app/feature/search/presentation/view/widgets/search_result_list.dart';
import 'package:book_store_app/feature/search/presentation/view/widgets/search_text_filed.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 35),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SearchTextFiled(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              top: 20,
            ),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Search Result", style: Styles.textStyle20)),
          ),
          Expanded(child: SearchResultList()),
        ],
      ),
    );
  }
}
