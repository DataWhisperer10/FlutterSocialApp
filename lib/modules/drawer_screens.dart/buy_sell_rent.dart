import 'package:flutter/material.dart';

class BuySellRent extends StatefulWidget {
  const BuySellRent({super.key});

  @override
  State<BuySellRent> createState() => _Settings1State();
}

class _Settings1State extends State<BuySellRent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Buy_Sell_Rent"),
      ),
    );
  }
}
