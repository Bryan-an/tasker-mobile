enum AppScreen {
  login,
  register,
  verifyEmail,
  home,
  filter,
}

extension AppScreenExtension on AppScreen {
  String get toPath {
    switch (this) {
      case AppScreen.home:
        return '/';
      case AppScreen.login:
        return '/login';
      case AppScreen.register:
        return '/register';
      case AppScreen.verifyEmail:
        return '/verifyEmail/:email';
      case AppScreen.filter:
        return '/filter';
      default:
        return '/';
    }
  }

  String get toName {
    switch (this) {
      case AppScreen.home:
        return 'home';
      case AppScreen.login:
        return 'login';
      case AppScreen.register:
        return 'register';
      case AppScreen.verifyEmail:
        return 'verify email';
      case AppScreen.filter:
        return 'filter';
      default:
        return 'home';
    }
  }

  String get toTitle {
    switch (this) {
      case AppScreen.home:
        return 'Tasks';
      case AppScreen.login:
        return 'Log In';
      case AppScreen.register:
        return 'Create Account';
      case AppScreen.verifyEmail:
        return 'Verify Email';
      case AppScreen.filter:
        return 'Filter';
      default:
        return 'Tasks';
    }
  }
}