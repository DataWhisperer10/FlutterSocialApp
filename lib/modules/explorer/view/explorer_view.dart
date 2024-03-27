import 'package:flutter/material.dart';
import 'package:netclan_explorer/home_drawer.dart';
import 'package:netclan_explorer/modules/refine/view/refine_view.dart';

class ExplorerView extends StatefulWidget {
  const ExplorerView({super.key});

  @override
  State<ExplorerView> createState() => _ExplorerViewState();
}

class _ExplorerViewState extends State<ExplorerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: Title(
            color: Colors.white,
            child: const Text(
              "Howdy Gajanand Kumawat !!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            )),
        backgroundColor: Color.fromARGB(255, 5, 50, 59),
        // leading: Drawer(
        //   // shadowColor: Colors.white,
        //   backgroundColor: Color.fromARGB(255, 5, 50, 59),
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       const DrawerHeader(
        //         decoration: BoxDecoration(
        //           color: Color.fromARGB(255, 233, 236, 239),
        //         ),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             CircleAvatar(
        //               radius: 30,
        //               backgroundImage: AssetImage('assets/avatar.png'),
        //             ),
        //             SizedBox(height: 10),
        //             Text(
        //               'User Name',
        //               style: TextStyle(fontSize: 18, color: Colors.white),
        //             ),
        //             Text(
        //               'user@example.com',
        //               style: TextStyle(color: Colors.white),
        //             ),
        //           ],
        //         ),
        //       ),
        //       ListTile(
        //         leading: const Icon(Icons.home),
        //         title: const Text('Home'),
        //         onTap: () {
        //           // Navigate to home page
        //         },
        //       ),
        //       // Add other items as needed
        //     ],
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const RefineView();
              }));
              // Handle the "Refine" button press
            },
            icon: const Icon(Icons.filter_list),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            // Text("Refine"), (
            //   'Refine',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ),
          const Center(
            child: Text(
              "Refine",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
