// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final User user;
  final bool authenticated;
  final bool initialized;

  const AuthState({
    this.user = const User(),
    this.authenticated = false,
    this.initialized = false,
  });

  @override
  List<Object?> get props => [user, authenticated, initialized];

  AuthState copyWith({
    User? user,
    bool? authenticated,
    bool? initialized,
  }) =>
      AuthState(
        user: user ?? this.user,
        authenticated: authenticated ?? this.authenticated,
        initialized: initialized ?? this.initialized,
      );

  @override
  bool get stringify => true;
}
