import 'package:bloc/bloc.dart';
import 'package:book_store_app/feature/home/data/model/book/book.model.dart';
import 'package:book_store_app/feature/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_list_state.dart';

class SearchListCubit extends Cubit<SearchListState> {
  SearchListCubit(this.searchRepo) : super(SearchListInitial());

  SearchRepo searchRepo;
  Future<void> fetchSearchdBooks({required String bookName}) async {
    emit(SearchLisLoading());
    var result = await searchRepo.fetchSearchdBooks(bookName: bookName);
    result.fold((failur) => emit(SearchListFailure(failur.errorMesage)),
        (books) => emit(SearchListSucsses(books)));
  }
}
