import 'package:flutter/material.dart';

class BusinessCards extends StatefulWidget {
  const BusinessCards({super.key});

  @override
  State<BusinessCards> createState() => _BusinessCardsState();
}

class _BusinessCardsState extends State<BusinessCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Business Cards"),
      ),
    );
  }
}
