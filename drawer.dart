import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueGrey.shade200,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(30),
          ),
        ),
        width: 300,
        shadowColor: Colors.red,
        elevation: 50,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Jenish"),
              accountEmail: Text("jenish1@gmail.com"),
              currentAccountPicture: CircleAvatar(),
              currentAccountPictureSize: Size(55, 55),
            ),
            // Container(
            //   width: 300,
            //   height: 200,
            //   color: Colors.blue,
            // ),
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  trailing: Icon(Icons.edit),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Text("Open Drawer"),
            );
          },
        ),
      ),
    );
  }
}
