// ignore_for_file: non_constant_identifier_names

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
        title: const Center(
          child: Text(
            "Howdy Gajanand Kumawat !!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 50, 59),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const RefineView();
                }));
              },
              icon: const Icon(Icons.filter_list),
              color: Colors.white,
            ),
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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt_outlined)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MyCard(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MyCard(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MyCard(),
                  ),
                ],
              ),
            )
          ]),
      floatingActionButton: floatingButton(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget floatingButton() {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 28, 53, 74),
      foregroundColor: Colors.white,
      onPressed: () {},
      shape: const CircleBorder(),
      child: const Icon(Icons.add),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (v) {
        setState(() {
          selectedIndex = v;
        });
      },
      currentIndex: selectedIndex,
      selectedIconTheme: const IconThemeData(
        color: Color.fromARGB(255, 3, 40, 64),
      ),
      unselectedIconTheme: const IconThemeData(color: Colors.black),
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
          icon: Icon(Icons.share),
          label: 'Network',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_rounded),
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
    );
  }

  Widget MyCard() {
    return Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gajanand Kumawat',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Jaipur | Student',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 4),
              Text(
                'Hi Community! I am Open to new connections',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ));
  }
}
