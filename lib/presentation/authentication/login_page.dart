import 'package:flutter/material.dart';
import 'package:history_dicoding_submission/data/dummies/authentication_dummy.dart';
import 'package:history_dicoding_submission/domain/usecases/authentication/login.dart';
import 'package:history_dicoding_submission/presentation/main/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Login login = Login(authentication: DummyAuthentication());
            login(LoginParams(email: 'email', password: 'password')).then(
              (value) {
                if (value.isSucces) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(user: value.resultValue!),
                    ),
                  );
                }
              },
            );
          },
          child: const Text('LOGIN'),
        ),
      ),
    );
  }
}
