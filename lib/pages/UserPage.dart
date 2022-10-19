import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base/routes/RouteName.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('User List')),
        body: Column(children: [
          ElevatedButton(
              child: Text('Details'),
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteName.USERDETAIL)),
          ElevatedButton(
              child: Text('Register'),
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteName.USERNEW))
        ]));
  }
}
