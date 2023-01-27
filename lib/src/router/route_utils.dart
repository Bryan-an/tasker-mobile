enum AppScreen {
  login,
  register,
  verifyEmail,
  home,
  filter,
  taskForm,
  timeline,
  allTasks,
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
      case AppScreen.taskForm:
        return '/taskForm';
      case AppScreen.timeline:
        return '/timeline';
      case AppScreen.allTasks:
        return '/allTasks';
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
      case AppScreen.taskForm:
        return 'task form';
      case AppScreen.timeline:
        return 'timeline';
      case AppScreen.allTasks:
        return 'all tasks';
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
      case AppScreen.taskForm:
        return 'Task';
      case AppScreen.timeline:
        return 'Timeline';
      case AppScreen.allTasks:
        return 'All Tasks';
      default:
        return 'Tasks';
    }
  }
}
