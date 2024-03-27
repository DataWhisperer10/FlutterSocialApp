import 'package:flutter/material.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/business_cards.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/buy_sell_rent.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/dating.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/jobs.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/matrimony.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/my_network.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/my_profile.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/netclan_groups.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/notes.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/switch_to_business.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/switch_to_merchant.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  static const List<Widget> screens = [
    MyProfile(),
    MyNetwork(),
    SwitchToBusiness(),
    SwitchToMerchant(),
    Dating(),
    Matrimony(),
    BuySellRent(),
    Jobs(),
    BusinessCards(),
    NetclanGroups(),
    Notes()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Color.fromARGB(255, 3, 17, 66),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/ram.jpg'),
                      radius: 30,
                      //backgroundColor: Color.fromARGB(255, 243, 99, 236),
                    ),
                    Text(
                      "Gajanand Kumawat",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Text(
                      "GAJAIptulbbra",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      "Available",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            for (int i = 0; i < screens.length; i++)
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = i;
                      });

                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return screens[currentIndex];
                      }));
                    },
                    child: const ListTile(
                      title: Text("My Profile"),
                      leading: Icon(Icons.person),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                  // const Divider(
                  //   color: Colors.black12,
                  // )
                ],
              )
          ],
        ),
      ),
    );
  }
}
