import 'package:book_store_app/feature/home/presentation/views/widgets/book_list_item.dart';
import 'package:book_store_app/feature/home/presentation/views_model/newest_books_list_cubit/newest_books_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBestListView extends StatelessWidget {
  const HomeBestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksListCubit, NewestBooksListState>(
      builder: (context, state) {
        if (state is NewestBooksListSucsses) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) => BookListItem(
              bookModel: state.books[index],
            ),
            padding: EdgeInsets.zero,
          );
        } else if (state is NewestBooksListFailure) {
          return Center(
            child: Text(state.errorMesage),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
