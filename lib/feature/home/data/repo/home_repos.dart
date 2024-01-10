import 'package:book_store_app/core/utils/failur/failur.dart';
import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failur,BookModel>> fetchBestSellerBooks();
  Future<Either<Failur,BookModel>>fetchFeaturedBooks();
}

