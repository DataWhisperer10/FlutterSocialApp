import 'package:flutter/material.dart';
import 'package:netclan_explorer/home_drawer.dart';
import 'package:netclan_explorer/modules/refine/view/refine_view.dart';

class ExplorerView extends StatefulWidget {
  const ExplorerView({Key? key}) : super(key: key);

  @override
  State<ExplorerView> createState() => _ExplorerViewState();
}

class _ExplorerViewState extends State<ExplorerView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Howdy Gajanand Kumawat !!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 50, 59),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const RefineView();
              }));
            },
            icon: const Icon(Icons.filter_list),
            color: Colors.white,
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: const HomeDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v) {
          setState(() {
            selectedIndex = v;
          });
        },
        currentIndex: selectedIndex,
        selectedIconTheme: const IconThemeData(
          color: Color.fromARGB(255, 3, 40, 64),
        ),
        unselectedIconTheme: const IconThemeData(color: Colors.blueGrey),
        selectedLabelStyle: const TextStyle(
          color: Color.fromARGB(255, 3, 40, 64),
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ios_share_rounded),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_rounded),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined),
            label: 'Groups',
          ),
        ],
      ),
    );
  }
}
