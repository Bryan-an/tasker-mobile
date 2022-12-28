part of 'auth_bloc.dart';

enum AuthStatus { initial, success, error, loading }

extension AuthStatusX on AuthStatus {
  bool get isInitial => this == AuthStatus.initial;
  bool get isSuccess => this == AuthStatus.success;
  bool get isError => this == AuthStatus.error;
  bool get isLoading => this == AuthStatus.loading;
}

class AuthState extends Equatable {
  final AuthStatus status;
  final User user;

  const AuthState({
    this.status = AuthStatus.initial,
    this.user = const User(id: ''),
  });

  @override
  List<Object?> get props => [status, user];

  AuthState copyWith({
    AuthStatus? status,
    User? user,
  }) =>
      AuthState(
        status: status ?? this.status,
        user: user ?? this.user,
      );
}
