import 'package:flutter/material.dart';

class NetclanGroups extends StatefulWidget {
  const NetclanGroups({super.key});

  @override
  State<NetclanGroups> createState() => _NetclanGroupsState();
}

class _NetclanGroupsState extends State<NetclanGroups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Netclan Groups"),
      ),
    );
  }
}
