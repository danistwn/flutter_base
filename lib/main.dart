import 'package:flutter/material.dart';
import 'package:flutter_base/routes/AppRoute.dart';
import 'package:flutter_base/routes/RouteName.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteName.USER,
      routes: AppRoute.all,
    );
  }
}
