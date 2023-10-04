import 'package:flutter/material.dart';
import 'package:history_dicoding_submission/domain/entities/user.dart';

class HomePage extends StatelessWidget {
  final User user;
  const HomePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text(user.toString()),
      ),
    );
  }
}
