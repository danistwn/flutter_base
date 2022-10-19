import 'package:flutter_base/pages/MainPage.dart';
import 'package:flutter_base/pages/UserPage.dart';
import 'package:flutter_base/routes/RouteName.dart';

class AppRoute {
  static final all = {
    RouteName.MAIN: (context) => MainPage(),
    RouteName.USER: (context) => UserPage(),
  };
}
