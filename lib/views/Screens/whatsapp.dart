import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsAppTabsScreen extends StatefulWidget {
  const WhatsAppTabsScreen({Key? key}) : super(key: key);
  @override
  State<WhatsAppTabsScreen> createState() => _WhatsAppTabsScreenState();
}

class _WhatsAppTabsScreenState extends State<WhatsAppTabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("Whatsapp "),
            actions: const [
              IconButton(
                onPressed: null,
                iconSize: 25,
                icon: Icon(Icons.camera_alt_rounded),
              ),
              IconButton(
                onPressed: null,
                iconSize: 25,
                icon: Icon(Icons.search_off_rounded),
              ),
              IconButton(
                iconSize: 25,
                onPressed: null,
                icon: Icon(CupertinoIcons.ellipsis_vertical),
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Camera",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "Chat",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "Status",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "Call",
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                  child: Text(
                "Camera",
                style: TextStyle(fontSize: 25),
              )),
              // WhatsAppChatScreen(),
              // WhatsAppStatusScreen(),
              // WhatsAppCallsScreen()
            ],
          ),
        ));
  }
}
