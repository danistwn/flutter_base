import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base/providers/AuthProvider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final txtEmail = TextEditingController();
  final txtPassword = TextEditingController();

  @override
  void dispose() {
    txtEmail.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: txtEmail,
                decoration: InputDecoration(
                    hintText: 'Email', prefixIcon: Icon(Icons.email_outlined)),
              ),
              TextFormField(
                controller: txtPassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password', prefixIcon: Icon(Icons.lock_outline)),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: provider.isLoading
                        ? null
                        : () => provider.login(
                            context, txtEmail.text, txtPassword.text),
                    child:
                        provider.isLoading ? Text('Memproses') : Text('Login')),
              )
            ],
          ),
        )),
      ),
    );
  }
}
