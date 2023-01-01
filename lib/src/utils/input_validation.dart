import 'package:email_validator/email_validator.dart';

mixin InputValidationMixin {
  bool isEmailValid(String email) => EmailValidator.validate(email);
}
