import 'package:flutter/material.dart';

class Matrimony extends StatefulWidget {
  const Matrimony({super.key});

  @override
  State<Matrimony> createState() => _MatrimonyState();
}

class _MatrimonyState extends State<Matrimony> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Matrimony"),
      ),
    );
  }
}
