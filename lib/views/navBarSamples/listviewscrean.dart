import 'package:flutter/material.dart';

class ListViewScrean extends StatefulWidget {
  const ListViewScrean({super.key});

  @override
  State<ListViewScrean> createState() => _ListViewScreanState();
}

class _ListViewScreanState extends State<ListViewScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(blurRadius: 1, spreadRadius: 1, offset: Offset(0, 1))
            ]),
            child: Center(
              child: SizedBox(
                  height: 400, child: Image.asset("assets/images/cart.png")),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ListTile(
                  leading: Text("5000"),
                  trailing: Icon(Icons.abc),
                ),
                ListTile(title: Text('List 2')),
                ListTile(title: Text('List 3')),
              ],
            ),
          ),
        ]));
  }
}
