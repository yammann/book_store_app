import 'package:book_store_app/core/failur/failur.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failur,List<BookModel>>>fetchSearchdBooks({required String? bookName});
} 