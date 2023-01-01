import 'package:tasker_mobile/src/features/auth/export.dart';

abstract class IUserRepository {
  Future<User> getInfo();

  Future<void> update(User user);

  Future<void> delete();
}
