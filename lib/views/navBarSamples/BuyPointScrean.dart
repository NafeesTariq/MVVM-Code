import 'package:flutter/material.dart';
import 'package:mvvm_project/resources/components/AppBar.dart';

class BuyPointsScrean extends StatefulWidget {
  const BuyPointsScrean({super.key});

  @override
  State<BuyPointsScrean> createState() => _BuyPointsScreanState();
}

class _BuyPointsScreanState extends State<BuyPointsScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
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
      body: Column(children: [
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 0, spreadRadius: 0, offset: Offset(0, 0))
          ]),
          child: Center(
            child: SizedBox(
                height: 400, child: Image.asset("assets/images/cart.png")),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Container(
              height: 50,
              width: 330,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      blurRadius: .5, spreadRadius: 0, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: const Text(
                        "5000",
                        style: TextStyle(fontSize: 20, fontFamily: "bold"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 0.5,
                ),
                SizedBox(
                    height: 25, child: Image.asset("assets/images/star.png")),
                const SizedBox(
                  width: 135,
                ),
                Container(
                  height: 32,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      " 0.99 \$",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ]),
            )
          ],
        )
      ]),
    );
  }
}
