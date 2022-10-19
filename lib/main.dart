import 'package:flutter/material.dart';
import 'package:flutter_base/pages/MainPage.dart';
import 'package:flutter_base/pages/auth/LoginPage.dart';
import 'package:flutter_base/providers/AuthProvider.dart';
import 'package:flutter_base/routes/AppRoute.dart';
import 'package:flutter_base/routes/RouteName.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthProvider())
        ],
        builder: (context, child) => Consumer<AuthProvider>(
              builder: ((context, value, child) => MaterialApp(
                    home: value.isLogged
                        ? MainPage()
                        : FutureBuilder(
                            future: value.checkAuth(),
                            builder: ((context, snapshot) => LoginPage())),
                    routes: AppRoute.all,
                  )),
            ));
  }
}
