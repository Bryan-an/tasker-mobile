import 'package:tasker_mobile/src/features/auth/export.dart';

abstract class IAuthRepository {
  Future<void> register(User user);

  Future<void> login(User user);

  Future<void> loginWithFacebook();

  Future<void> loginWithGoogle();

  Future<void> verifyEmail(Verification data);

  Future<void> resendVerificationCode(Verification data);
}
