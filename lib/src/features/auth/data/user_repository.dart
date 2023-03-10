import 'package:tasker_mobile/src/features/auth/export.dart';

class UserRepository implements IUserRepository {
  final UserService _service;

  UserRepository({UserService? service}) : _service = service ?? UserService();

  @override
  Future<void> delete() async {
    await _service.delete();
  }

  @override
  Future<User> getInfo() async {
    var user = await _service.get();
    return User.fromJson(user);
  }

  @override
  Future<void> update(User user) async {
    await _service.update(user.toJson());
  }
}
