import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview_item.dart';
import 'package:book_store_app/feature/home/presentation/views_model/book_list_cubit/home_books_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBooksListView extends StatelessWidget {
  const HomeBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBooksListCubit, HomeBooksListState>(
      builder: (context, state) {
        if (state is HomeBooksListSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  HomeListViewItem(url:state.books[index].volumeInfo!.imageLinks!.thumbnail! ,);
              },
            ),
          );
        } else if (state is HomeBooksListFailure) {
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
