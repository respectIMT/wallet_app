import 'coordinate.dart';

class Routes implements Coordinate {
  const Routes._({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  static const mainScreen = Routes._(
    name: 'main_screen',
    path: '/pages',
  );
  static const homePage = Routes._(
    name: 'home_page',
    path: '/home',
  );
  static const splashScreen = Routes._(
    name: 'splash_page',
    path: '/splash',
  );
  static const securityPage = Routes._(
    name: 'security_page',
    path: '/security',
  );
  static const registrationPage = Routes._(
    name: 'registration_page',
    path: '/registration',
  );
  static const outlayPage = Routes._(
    name: 'add_expenses_page',
    path: '/sadd_expenses',
  );
  static const profitpage = Routes._(
    name: 'add_expenses_page',
    path: '/sadd_expenses',
  );
  static const settingPage = Routes._(
    name: 'add_expenses_page',
    path: '/sadd_expenses',
  );

  @override
  String toString() => 'name=$name, path=$path';
}
