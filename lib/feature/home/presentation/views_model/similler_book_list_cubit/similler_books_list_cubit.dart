import 'package:bloc/bloc.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/home/data/repo/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'similler_books_list_state.dart';

class SimillerBooksListCubit extends Cubit<SimillerBooksListState> {
  SimillerBooksListCubit(this.homeRepo) : super(SimillerBooksListInitial());

  HomeRepo homeRepo;
  Future<void> fetchSimillerdBooks({required String category}) async {
    emit(SimillerBooksLisLoading());
    var result = await homeRepo.fetchSimillerdBooks(categore: category);
    result.fold((failur) => emit(SimillerBooksListFailure(failur.errorMesage)),
        (books) => emit(SimillerBooksListSucsses(books)));
  }
}
