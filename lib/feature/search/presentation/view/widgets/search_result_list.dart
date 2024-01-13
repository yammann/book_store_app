import 'package:book_store_app/feature/home/presentation/views/widgets/book_list_item.dart';
import 'package:book_store_app/feature/home/presentation/views/widgets/home_listview_item.dart';
import 'package:book_store_app/feature/search/presentation/view_model/search_list_cubit/search_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchListCubit,SearchListState>(
      builder: (context, state) {
        if (state is SearchListSucsses) {
          return ListView.builder(
            itemCount: state.books?.length??0,
            itemBuilder: (context, index){
               return state.books!.isEmpty?
                const Text("")
                :
                 BookListItem(bookModel:state.books![index] );
            }
          );
        } else if (state is SearchListFailure) {
          return Center(
            child: Text(state.errorMesage),
          );
        } else {
          return const Center(
            child: Center(child: Text("Enter book name"),),
          );
        }
      },
    );
  }
}
