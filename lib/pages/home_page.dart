import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/dashboard_user/user_card.dart';

import '../models/drawer_menus.dart';
import 'drawer/MyDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    List<MenuItem> _menuItems = [];
    bool pressed = false;
    void _onItemTapped(int index) {
      // setState(() {
      _selectedIndex = index;
      // });
    }

    @override
    void initState() {
      super.initState();

    }

    Color hexToColor(String code) {
      return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }

    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.notes,
                  color: hexToColor("#4702E8"),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          shadowColor: null,
          elevation: 0,
          title: Text(
            "Safai Mitra",
            style: TextStyle(
                color: hexToColor("#4702E8"),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          // backgroundColor: Colors.white,
        ),
        body: const Column(
          children: [
            UserCard(),
          ],
        ),
        drawer: const MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'info',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: hexToColor("#4702E8"),
          onTap: _onItemTapped,
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          tooltip: 'Shortcuts',
          child: Icon(Icons.add),
        ));

  }


}
