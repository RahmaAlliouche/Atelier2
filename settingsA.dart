import 'package:flutter/material.dart';

import 'MenuAD.dart';

class SettingsPageA extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPageA> {
  bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Settings'),
            backgroundColor: Colors.greenAccent,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => HomePageA())));
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
                  focusColor: Colors.greenAccent,
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
                title: Text('Notifications'),
                trailing: Icon(Icons.arrow_forward),
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
