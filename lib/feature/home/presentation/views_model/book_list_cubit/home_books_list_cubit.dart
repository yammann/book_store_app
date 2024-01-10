import 'package:bloc/bloc.dart';
import 'package:book_store_app/feature/home/data/model/book_model/book_model.dart';
import 'package:book_store_app/feature/home/data/repo/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'home_books_list_state.dart';

class HomeBooksListCubit extends Cubit<HomeBooksListState> {
  HomeBooksListCubit(this.homeRepo) : super(HomeBooksListInitial());

  HomeRepo homeRepo;
  Future<void> fetchFutureBooks() async {
    emit(HomeBooksLisLoading());
    var result= await homeRepo.fetchFeaturedBooks();
    result.fold((failur) => emit(HomeBooksListFailure(failur.errorMesage)), 
    (books) => emit(HomeBooksListSucsses(books)));
  }
}
