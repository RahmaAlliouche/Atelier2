import 'package:flutter/material.dart';
import 'package:save/doctor/planingD.dart';

import 'dart:io';

import 'package:save/doctor/profilD.dart';
import 'package:save/doctor/settingsD.dart';
import 'package:save/nurse/planningN.dart';
import 'package:save/nurse/profilN.dart';

import 'package:url_launcher/url_launcher.dart';

class HomePageN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            backgroundColor: Colors.greenAccent,
          ),
          drawer: const NavigationDrawer(),
        ));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: Colors.greenAccent,
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.greenAccent,
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 52, backgroundImage: AssetImage('image/Dr.png')),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Alliouche Fatiha',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => MyProfN())));
                }),
            ListTile(
                leading: const Icon(Icons.folder),
                title: const Text('Medical folder'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => MyPlanN())));
                }),
            ListTile(
                leading: const Icon(Icons.person_off),
                title: const Text('Abcense'),
                onTap: () {}),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => SettingsPage())));
                })
          ],
        ),
      );
}

class AbsenceN {}
