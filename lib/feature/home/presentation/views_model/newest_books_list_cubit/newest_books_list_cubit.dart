import 'package:bloc/bloc.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/home/data/repo/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_list_state.dart';

class NewestBooksListCubit extends Cubit<NewestBooksListState> {
  NewestBooksListCubit(this.homeRepo) : super(NewestBooksListInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewestBooksListLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failur) => emit(NewestBooksListFailure(failur.errorMesage)),
        (books) => emit(NewestBooksListSucsses(books)));
  }
}
