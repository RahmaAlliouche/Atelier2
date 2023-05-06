import 'package:flutter/material.dart';
import 'package:save/patient/profil.dart';
import 'package:save/patient/request.dart';

import '../doctor/profilD.dart';
import '../doctor/settingsD.dart';

class HomePagee extends StatelessWidget {
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
          body: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Appointments',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    color: Colors.greenAccent,
                  ),
                  title: Stack(
                    children: [
                      Text('Upcoming Appointment'),
                      Positioned(
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Cancel'),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text('Dr. Nabti - April 10, 2023 at 2:30 PM'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Care Plan',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.assignment,
                    color: Colors.greenAccent,
                  ),
                  title: Text('Care Plan'),
                  subtitle: Text(
                      'Daily monitoring of blood pressure and blood sugar levels.'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Medication Reminder',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.local_pharmacy,
                    color: Colors.greenAccent,
                  ),
                  title: Text('Medication'),
                  subtitle: Text('Take 1 pill of Lipitor at 8:00 AM.'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Vital Signs',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.greenAccent,
                  ),
                  title: Text('Heart Rate'),
                  subtitle: Text('75 bpm'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.ac_unit,
                    color: Colors.greenAccent,
                  ),
                  title: Text('Temperature'),
                  subtitle: Text('38.6 °F'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Rapport :',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.greenAccent,
                  ),
                  title: Text('Blood Pressure Alert'),
                  subtitle: Text(
                      'Your blood pressure is high. Please take medication and recheck in 2 hours.'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.greenAccent,
                  ),
                  title: Text('Medication Reminder'),
                  subtitle: Text('You have not taken your Lipitor today.'),
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
        color: Color.fromARGB(255, 6, 186, 78),
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.greenAccent,
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 52, backgroundImage: AssetImage('images/BTS.png')),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Alliouche Yasser',
                  style: TextStyle(fontSize: 25, color: Colors.white),
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => MyProfe())));
                }),
            ListTile(
                leading: const Icon(Icons.send),
                title: const Text('Request'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => Request())));
                }),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => SettingsPage())));
                })
          ],
        ),
      );
}
