// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool validateLogin(String email, String password) {
  if (email != null && password != null) {
    print("Email:$email");
    print("Password:$password");
    return true;
  }
  return false;
}

void proceedLogin(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const HomePage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[500],
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        children: [
          Lottie.network(
              'https://lottie.host/9f1d00c6-d145-452a-b79b-151b04702d89/tr9cdv7oJJ.json',
              height: 200),
          TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          Container(height: 30),
          TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          Container(height: 30),
          ElevatedButton(
              onPressed: () {
                if (validateLogin(
                    emailController.text, passwordController.text)) {
                  print('Valid Credentials');
                  proceedLogin(context);
                } else {
                  print('Invalid Credentials');
                }
              },
              child: const Text('Login'))
        ],
      ),
    );
  }
}
