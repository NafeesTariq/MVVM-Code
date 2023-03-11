import 'package:flutter/material.dart';
import 'package:mvvm_project/resources/components/AppBar.dart';
import 'package:mvvm_project/views/navBarSamples/EarnPoints.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<Main> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    //we will place screans here

    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.star,
      size: 150,
    ),
    EarnPoints(),
    // Icon(
    //   Icons.chat,
    //   size: 150,
    // ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        // appBar: AppBar(
        //   actions: <Widget>[
        //     Row(children: [
        //       Text(
        //         "413",
        //         style: TextStyle(fontSize: 22),
        //       ),
        //       Icon(Icons.star_border),
        //     ])
        //   ],
        //   backgroundColor: Colors.red,
        //   title: Center(child: const Text('ViewBooster')),
        // ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text('View Booster App'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: const Text('VIP Account'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.speaker_notes),
                title: const Text('Start a new Compaign'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: const Text('My Compaigns'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.star_border),
                title: const Text('Earn Points'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: const Text('Privacy Policy'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: const Text('Rate Us'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: const Text('Exit'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red,
          // fixedColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.visibility,
                color: Colors.red,
              ),
              label: 'Views',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                color: Colors.red,
              ),
              label: 'Compaign',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.red,
              ),
              label: 'My Compaigns',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
                color: Colors.red,
              ),
              label: 'Earn Points',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.chat),
            //   label: 'Chats',
            // ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}
