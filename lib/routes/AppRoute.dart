import 'package:flutter_base/pages/MainPage.dart';
import 'package:flutter_base/pages/UserPage.dart';
import 'package:flutter_base/pages/auth/LoginPage.dart';
import 'package:flutter_base/routes/RouteName.dart';

import '../pages/UserDetailPage.dart';
import '../pages/UserNewPage.dart';

class AppRoute {
  static final all = {
    RouteName.MAIN: (context) => MainPage(),
    RouteName.USER: (context) => UserPage(),
    RouteName.USERDETAIL: (context) => UserDetailPage(),
    RouteName.USERNEW: (context) => UserNewPage(),
    RouteName.LOGIN: (context) => LoginPage(),
  };
}
