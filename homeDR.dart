import 'package:flutter/material.dart';

import 'dart:io';

import 'package:save/driver/planningDR.dart';
import 'package:save/driver/profilDR.dart';
import 'package:save/driver/setDR.dart';
import 'package:save/driver/test.dart';

import 'absencDR.dart';

class HomePageDR extends StatelessWidget {
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
                    radius: 52,
                    backgroundImage: AssetImage('image/driver.png')),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Imed Haderbache',
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
                      MaterialPageRoute(builder: ((context) => MyProfDR())));
                }),
            ListTile(
                leading: const Icon(Icons.calendar_month),
                title: const Text('Planning'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => MyPlanDR())));
                }),
            ListTile(
                leading: const Icon(Icons.person_off),
                title: const Text('Abcense'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => AbsenceDR())));
                }),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => MyAppS())));
                })
          ],
        ),
      );
}
