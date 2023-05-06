import 'package:flutter/material.dart';

import '../doctor/MenuD.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Settings'),
            backgroundColor: Colors.green,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => HomePage())));
              },
              icon: Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
          body: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Dark mode'),
                trailing: Switch(
                  value: _isDarkModeEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isDarkModeEnabled = value;
                    });
                  },
                ),
              ),
              Divider(),
              ListTile(
                title: Text('Language'),
                trailing: Text('English'),
              ),
              Divider(),
            ],
          ),
        ));
  }
}
