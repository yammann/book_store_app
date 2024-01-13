import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview_item.dart';
import 'package:book_store_app/feature/home/presentation/views_model/similler_book_list_cubit/similler_books_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillerBooksListView extends StatelessWidget {
  const SimillerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillerBooksListCubit, SimillerBooksListState>(
      builder: (context, state) {
        if (state is SimillerBooksListSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books?.length??0,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return state.books!.isEmpty?
                const Text("")
                :
                 HomeListViewItem(bookModel: state.books?[index]);
              },
            ),
          );
        } else if (state is SimillerBooksListFailure) {
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
