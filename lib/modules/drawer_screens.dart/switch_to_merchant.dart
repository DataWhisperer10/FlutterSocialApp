import 'package:flutter/material.dart';

class SwitchToMerchant extends StatefulWidget {
  const SwitchToMerchant({super.key});

  @override
  State<SwitchToMerchant> createState() => _SwitchToMerchantState();
}

class _SwitchToMerchantState extends State<SwitchToMerchant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Switch To Merchant"),
      ),
    );
  }
}
