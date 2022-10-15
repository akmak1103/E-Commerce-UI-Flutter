import 'package:flutter/material.dart';

class MyDrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
            accountName: Text(
              "Fitness Tracker",
              style: TextStyle(fontSize: 26.0),
            ),
            currentAccountPicture: CircleAvatar(
                child: FlutterLogo(
                  size: 70.0,
                ),
                backgroundColor: Colors.green[100]),
            accountEmail: null),
        SizedBox(
          height: 30.0,
        ),
        ListTile(
          title: Text('Nutrition'),
          onTap: null,
        )
      ],
    ));
  }
}
