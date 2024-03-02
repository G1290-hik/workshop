import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        centerTitle: true,
        title: const Text(
          "Home",
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              "https://lottie.host/269eb56a-e1be-46a3-a57d-b43f5fd0df82/uAvE9hm3u3.json",
              height: 200),
          const Text(
            "This is Home Page",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      )),
    );
  }
}
