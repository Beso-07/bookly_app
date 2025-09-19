part of 'simliar_books_cubit.dart';

sealed class SimliarBooksState extends Equatable {
  const SimliarBooksState();

  @override
  List<Object> get props => [];
}

final class SimliarBooksInitial extends SimliarBooksState {}

final class SimliarBooksLoadign extends SimliarBooksState {}

final class SimliarBooksFailure extends SimliarBooksState {
  final String errMessage;
  const SimliarBooksFailure(this.errMessage);
}

final class SimliarBooksSuccess extends SimliarBooksState {
  final List<BookModel> books;
  const SimliarBooksSuccess(this.books);
}
