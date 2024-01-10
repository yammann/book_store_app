part of 'home_books_list_cubit.dart';

sealed class HomeBooksListState extends Equatable {
  const HomeBooksListState();

  @override
  List<Object> get props => [];
}

final class HomeBooksListInitial extends HomeBooksListState {}

final class HomeBooksLisLoading extends HomeBooksListState {}

final class HomeBooksListSucsses extends HomeBooksListState {
  final List<BookModel> books;

  const HomeBooksListSucsses(this.books);
}

final class HomeBooksListFailure extends HomeBooksListState {
  final String errorMesage;

  const HomeBooksListFailure(this.errorMesage);
}
