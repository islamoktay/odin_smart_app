abstract class GenericState {}

class GenericInitial extends GenericState {}

class GenericLoading extends GenericState {}

class GenericCompletedList<T> extends GenericState {
  final List<T> response;

  GenericCompletedList(this.response);
}

class GenericCompletedItem<T> extends GenericState {
  final T response;

  GenericCompletedItem(this.response);
}

class GenericError extends GenericState {
  final String message;
  final String statusCode;

  GenericError(this.message, this.statusCode);
}
