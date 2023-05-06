import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'homeDR.dart';

class MyPlanDR extends StatelessWidget {
  void _openGoogleMaps() async {
    const url = 'https://www.google.com/maps';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchMap(String address) async {
    final query = Uri.encodeComponent(address);
    final url = 'https://www.google.com/maps/search/?api=1&query=$query';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor planning',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                builder: ((context) => HomePageDR()),
              ));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.greenAccent,
          title: Text('Planning'),
        ),
        body: Container(
          height: 300, // set the height to your desired size
          child: ListView(
            children: <Widget>[
              InkWell(
                onTap: () => _launchMap('marché boudraa salah'),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.greenAccent,
                  ),
                  trailing: Icon(Icons.location_on),
                  title: Text('Sunday 19/03/2023'),
                  subtitle: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Alliouche Yasser at 14:00',
                    ),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () =>
                    _launchMap('Uv17 novell vile ali mendjli, El khroub'),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.greenAccent,
                  ),
                  title: Text('Monday 20/03/2023'),
                  trailing: Icon(Icons.location_on),
                  subtitle: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Saifi Amira at 10:00',
                    ),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  // Action to perform when the third ListTile
                  //is clicked
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
