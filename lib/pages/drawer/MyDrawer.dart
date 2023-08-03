import 'package:flutter/material.dart';
import 'package:hello_flutter/utils/AppColors.dart';
import 'package:hello_flutter/utils/Utils.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
              height: 150, // Specify the desired height
              width: double.infinity, // Match the parent's width
              color: AppColors.primaryColor,
              child: Center(
                child: Text(
                  "Safai Mitra",
                  style: TextStyle(
                      color: Utils.hexToColor("#ffffff"),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Handle the onTap event for the Home item
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle the onTap event for the Settings item
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more ListTile widgets for additional menu items
        ],
      ),
    );
  }
}
