import 'package:book_store_app/feature/search/presentation/view_model/search_list_cubit/search_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextFiled extends StatelessWidget {
  SearchTextFiled({super.key,});
  
  final searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchTextController,
      onChanged: (value) {
        BlocProvider.of<SearchListCubit>(context).fetchSearchdBooks(bookName: searchTextController.text);
      },
      decoration: const InputDecoration(
          hintText: "Searche",
          suffixIcon: Icon(FontAwesomeIcons.magnifyingGlass)),
    );
  }
}
