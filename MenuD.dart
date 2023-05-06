import 'package:flutter/material.dart';
import 'package:save/doctor/planingD.dart';

import 'dart:io';

import 'package:save/doctor/profilD.dart';
import 'package:save/doctor/settingsD.dart';

import 'package:url_launcher/url_launcher.dart';

import 'absenceD.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void launchPDF(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            backgroundColor: Colors.greenAccent,
          ),
          drawer: const NavigationDrawer(),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(
                    16.0), // Replace with your desired padding amount
                child: Text(
                  'Notification :',
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    color: Colors.greenAccent,
                  ),
                  title: Stack(
                    children: [
                      Text(' Appointment'),
                      Positioned(
                        right: 0,
                        child: IconButton(
                          onPressed: () {
                            launchPDF(
                                'https://www.has-sante.fr/upload/docs/application/pdf/2009-08/dossier_du_patient_-_fascicule_1_reglementation_et_recommandations_-_2003.pdf');
                          },
                          icon: Icon(Icons.folder),
                        ),
                      ),
                    ],
                  ),
                  subtitle:
                      Text('Alliouche Yasser - April 10, 2023 at 2:30 PM'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    color: Colors.greenAccent,
                  ),
                  title: Stack(
                    children: [
                      Text(' Appointment'),
                      Positioned(
                        right: 0,
                        child: IconButton(
                          onPressed: () {
                            launchPDF(
                                'https://www.has-sante.fr/upload/docs/application/pdf/2009-08/dossier_du_patient_-_fascicule_1_reglementation_et_recommandations_-_2003.pdf');
                          },
                          icon: Icon(Icons.folder),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text('Saifi Amira - April 30, 2023 at 8:30 PM'),
                ),
              ),
            ],
          ),
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
                    backgroundImage: AssetImage('image/doctor.png')),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Nabtie Nadire',
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
                      MaterialPageRoute(builder: ((context) => MyProf())));
                }),
            ListTile(
                leading: const Icon(Icons.folder),
                title: const Text('Medecal folder'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => MyPlan())));
                }),
            ListTile(
                leading: const Icon(Icons.person_off),
                title: const Text('Abcense'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => Absence())));
                }),
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
