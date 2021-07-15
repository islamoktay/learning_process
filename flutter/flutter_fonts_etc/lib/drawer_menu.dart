import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("ahmetislamoktay"),
            accountEmail: Text("Ahmet@islam.oktay"),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text("AO"),
              ),
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-w66TlwUSxgxSqhn7mRTzlj6aiWpuyxLxmQ&usqp=CAU"),
            ],
            currentAccountPicture: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-w66TlwUSxgxSqhn7mRTzlj6aiWpuyxLxmQ&usqp=CAU"),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Ana Sayfa"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("Ara"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_box_outlined),
                  title: Text("Profil"),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.account_box_outlined),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                AboutListTile(
                  applicationName: "Flutter Dersleri",
                  applicationIcon: Icon(Icons.save),
                  applicationVersion: "2.0",
                  child: Text("About Us"),
                  applicationLegalese: null,
                  icon: Icon(Icons.keyboard),
                  aboutBoxChildren: [
                    Text("Child 1"),
                    Text("Child 1"),
                    Text("Child 1"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
