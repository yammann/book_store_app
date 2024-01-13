import 'package:book_store_app/core/utils/servise_located.dart';
import 'package:book_store_app/feature/search/data/repo/search_repo_impl.dart';
import 'package:book_store_app/feature/search/presentation/view/search_view_body.dart';
import 'package:book_store_app/feature/search/presentation/view_model/search_list_cubit/search_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchListCubit(
        getIt.get<SearchRepoImpl>(),
      ),
      child: const Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}
