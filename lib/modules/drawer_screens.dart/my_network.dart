import 'package:flutter/material.dart';

class MyNetwork extends StatefulWidget {
  const MyNetwork({super.key});

  @override
  State<MyNetwork> createState() => _Settings1State();
}

class _Settings1State extends State<MyNetwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Network"),
      ),
    );
  }
}
