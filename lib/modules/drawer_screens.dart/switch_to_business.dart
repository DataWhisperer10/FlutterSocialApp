import 'package:flutter/material.dart';

class SwitchToBusiness extends StatefulWidget {
  const SwitchToBusiness({super.key});

  @override
  State<SwitchToBusiness> createState() => _SwitchToBusinessState();
}

class _SwitchToBusinessState extends State<SwitchToBusiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Switch to Business"),
      ),
    );
  }
}
