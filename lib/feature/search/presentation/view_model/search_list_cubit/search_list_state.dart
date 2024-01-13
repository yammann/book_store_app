part of 'search_list_cubit.dart';

sealed class SearchListState extends Equatable {
  const SearchListState();

  @override
  List<Object> get props => [];
}

final class SearchListInitial extends SearchListState {}

final class SearchLisLoading extends SearchListState {}

final class SearchListSucsses extends SearchListState {
  final List<BookModel>? books;

  const SearchListSucsses(this.books);
}

final class SearchListFailure extends SearchListState {
  final String errorMesage;

  const SearchListFailure(this.errorMesage);
}
