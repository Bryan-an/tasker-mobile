import 'package:tasker_mobile/src/features/auth/application/auth_service.dart';
import 'package:tasker_mobile/src/features/auth/data/auth_interface.dart';
import 'package:tasker_mobile/src/features/auth/domain/verification.dart';
import 'package:tasker_mobile/src/features/auth/domain/user.dart';

class AuthRepository implements IAuthRepository {
  final AuthService _service;

  AuthRepository({AuthService? service}) : _service = service ?? AuthService();

  @override
  Future<void> login(User user) async {
    await _service.login(user.toJson());
  }

  @override
  Future<void> loginWithFacebook() async {
    await _service.loginWithFacebook();
  }

  @override
  Future<void> loginWithGoogle() async {
    await _service.loginWithGoogle();
  }

  @override
  Future<void> register(User user) async {
    await _service.register(user.toJson());
  }

  @override
  Future<void> resendVerificationCode(Verification data) async {
    await _service.resendVerificationCode(data.toJson());
  }

  @override
  Future<void> verifyEmail(Verification data) async {
    await _service.verifyEmail(data.toJson());
  }
}
