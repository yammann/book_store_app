import 'package:book_store_app/core/failur/failur.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failur, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failur, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failur, List<BookModel>>> fetchSimillerdBooks({required String? categore});
  
}
