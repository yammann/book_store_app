part of 'similler_books_list_cubit.dart';

sealed class SimillerBooksListState extends Equatable {
  const SimillerBooksListState();

  @override
  List<Object> get props => [];
}

final class SimillerBooksListInitial extends SimillerBooksListState {}

final class SimillerBooksLisLoading extends SimillerBooksListState {}

final class SimillerBooksListSucsses extends SimillerBooksListState {
  final List<BookModel> books;

  const SimillerBooksListSucsses(this.books);
}

final class SimillerBooksListFailure extends SimillerBooksListState {
  final String errorMesage;

  const SimillerBooksListFailure(this.errorMesage);
}
