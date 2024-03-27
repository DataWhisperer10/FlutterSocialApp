import 'package:flutter/material.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/buy_sell_rent.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/dating.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/jobs.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/live_location.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/matrimony.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/my_network.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/my_profile.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/switch_to_business.dart';
import 'package:netclan_explorer/modules/drawer_screens.dart/switch_to_merchant.dart';

import 'modules/drawer_screens.dart/business_cards.dart';
import 'modules/drawer_screens.dart/netclan_groups.dart';
import 'modules/drawer_screens.dart/notes.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

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
    Notes(),
    LiveLocation()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Theme(
        data: ThemeData(
          // Set the icon theme to white
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color.fromARGB(255, 18, 32, 45),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/brand_identity.jpg'),
                        radius: 30,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Gajanand Kumawat",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "GAJAIptulbbra",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        "Available",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: screens.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });

                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return screens[currentIndex];
                          },
                        ));
                      },
                      leading: _getLeadingIcon(index),
                      title: _getTitleText(index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getLeadingIcon(int index) {
    switch (index) {
      case 0:
        return const Icon(
          Icons.person,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 1:
        return const Icon(
          Icons.group,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 2:
        return const Icon(
          Icons.business,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 3:
        return const Icon(
          Icons.home_work_outlined,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 4:
        return const Icon(
          Icons.favorite,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 5:
        return const Icon(
          Icons.person_add_alt,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 6:
        return const Icon(
          Icons.work,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 7:
        return const Icon(
          Icons.shopping_bag_outlined,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 8:
        return const Icon(
          Icons.badge,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 9:
        return const Icon(
          Icons.star,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      case 10:
        return const Icon(
          Icons.edit_note_sharp,
          color: Color.fromARGB(255, 2, 38, 67),
        );

      case 11:
        return const Icon(
          Icons.location_on,
          color: Color.fromARGB(255, 2, 38, 67),
        );
      default:
        return const Icon(
          Icons.location_on,
          color: Color.fromARGB(255, 2, 38, 67),
        );
    }
  }

  Widget _getTitleText(int index) {
    switch (index) {
      case 0:
        return const Text('My Profile');
      case 1:
        return const Text('My Network');
      case 2:
        return const Text('Switch to Business');
      case 3:
        return const Text('Switch to Merchant');
      case 4:
        return const Text('Dating');
      case 5:
        return const Text('Matrimony');
      case 6:
        return const Text('Buy-Sell-Rent');
      case 7:
        return const Text('Jobs');
      case 8:
        return const Text('Business Cards');
      case 9:
        return const Text('Netclan Group');
      case 10:
        return const Text('Notes');
      case 11:
        return const Text('Live Location');

      default:
        return const Text('Live Location');
    }
  }
}
