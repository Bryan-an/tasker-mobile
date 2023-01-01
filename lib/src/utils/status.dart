enum Status { initial, success, error, loading }

extension AuthStatusX on Status {
  bool get isInitial => this == Status.initial;
  bool get isSuccess => this == Status.success;
  bool get isError => this == Status.error;
  bool get isLoading => this == Status.loading;
}
