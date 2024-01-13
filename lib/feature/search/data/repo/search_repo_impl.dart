import 'package:book_store_app/core/failur/failur.dart';
import 'package:book_store_app/core/utils/api_servise.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{
  SearchRepoImpl(this.apiServise);
  final ApiServise apiServise;
   @override
  Future<Either<Failur, List<BookModel>>> fetchSearchdBooks({required String? bookName})async {
     try {
      Map<String, dynamic> data = await apiServise.get(
          endPoint: "volumes?q=subject:programming&Filtering=free-ebooks");
      List<BookModel> searchList = [];
      for (Map<String, dynamic> item in data["items"]) {
       if(item["volumeInfo"]["title"].contains(bookName??"a")){
          searchList.add(BookModel.fromJson(item));
        }
      }
      return right(searchList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailur.fromDioException(e));
      }
      return left(ServerFailur(e.toString()));
    }
  }
}