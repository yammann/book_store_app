import 'package:book_store_app/core/utils/api_servise.dart';
import 'package:book_store_app/feature/home/data/repo/hom_repo_imple.dart';
import 'package:book_store_app/feature/search/data/repo/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiseLocated() {
  getIt.registerSingleton<ApiServise>(ApiServise(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServise>())); 
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(getIt.get<ApiServise>()));
}
