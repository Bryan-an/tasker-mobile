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
  final bool authenticated;
  final bool initialized;

  const AuthState({
    this.status = AuthStatus.initial,
    this.user = const User(id: ''),
    this.authenticated = false,
    this.initialized = false,
  });

  @override
  List<Object?> get props => [status, user];

  AuthState copyWith({
    AuthStatus? status,
    User? user,
    bool? authenticated,
    bool? initialized,
  }) =>
      AuthState(
        status: status ?? this.status,
        user: user ?? this.user,
        authenticated: authenticated ?? this.authenticated,
        initialized: initialized ?? this.initialized,
      );
}
