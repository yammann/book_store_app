part of 'newest_books_list_cubit.dart';

sealed class NewestBooksListState extends Equatable {
  const NewestBooksListState();

  @override
  List<Object> get props => [];
}

final class NewestBooksListInitial extends NewestBooksListState {}

final class NewestBooksListLoading extends NewestBooksListState {}

final class NewestBooksListSucsses extends NewestBooksListState {
  final List<BookModel> books;

  const NewestBooksListSucsses(this.books);
}

final class NewestBooksListFailure extends NewestBooksListState {
  final String errorMesage;
  
  const NewestBooksListFailure(this.errorMesage);
}
