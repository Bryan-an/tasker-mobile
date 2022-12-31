import 'package:email_validator/email_validator.dart';

mixin InputValidationMixin {
  bool isEmailValid(String email) => EmailValidator.validate(email);

  bool isPasswordValid(String password) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    return regex.hasMatch(password);
  }
}
