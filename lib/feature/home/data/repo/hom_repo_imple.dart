import 'package:book_store_app/core/failur/failur.dart';
import 'package:book_store_app/core/utils/api_servise.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/home/data/repo/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiServise apiServise;
  HomeRepoImpl(this.apiServise);

  @override
  Future<Either<Failur, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await apiServise.get(
          endPoint: "volumes?q=subject:programming&Filtering=free-ebooks");
      List<BookModel> bookList = [];
      for (var item in data["items"]) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailur.fromDioException(e));
      }
      return left(ServerFailur(e.toString()));
    }
  }

  @override
  Future<Either<Failur, List<BookModel>>> fetchNewsetBooks() async {
    try {
      Map<String, dynamic> data = await apiServise.get(
          endPoint:
              "volumes?q=subject:programming&Filtering=free-ebooks&Sorting=relevance");
      List<BookModel> bookList = [];
      for (var item in data["items"]) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailur.fromDioException(e));
      }
      return left(ServerFailur(e.toString()));
    }
  }
  
  @override
  Future<Either<Failur, List<BookModel>>> fetchSimillerdBooks({required String categore})async {
    try {
      Map<String, dynamic> data = await apiServise.get(
          endPoint:
              "volumes?q=subject:programming&Filtering=free-ebooks&Sorting=relevance");
      List<BookModel> bookList = [];
      for (var item in data["items"]) {
        bookList.add(BookModel.fromJson(item));
      }
      return right(bookList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailur.fromDioException(e));
      }
      return left(ServerFailur(e.toString()));
    }
  }
}
