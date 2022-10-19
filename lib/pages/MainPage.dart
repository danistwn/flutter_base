import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base/providers/AuthProvider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello flutter fan base'),
              Text('Welcome to helper app'),
              ElevatedButton(
                  onPressed: () =>
                      Provider.of<AuthProvider>(context, listen: false)
                          .logout(),
                  child: Text('LOGOUT'))
            ]),
      ),
    );
  }
}
