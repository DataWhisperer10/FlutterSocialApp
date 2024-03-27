import 'package:flutter/material.dart';

class Dating extends StatefulWidget {
  const Dating({super.key});

  @override
  State<Dating> createState() => _DatingState();
}

class _DatingState extends State<Dating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Dating"),
      ),
    );
  }
}
