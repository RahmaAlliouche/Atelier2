import 'package:flutter/material.dart';

import 'menuN.dart';

class MyPlanN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medecal folder',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => HomePageN())));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.greenAccent,
          title: Text('Medecale Folder'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.folder,
                color: Colors.greenAccent,
              ),
              title: Text('Alliouche Yasser '),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.folder,
                color: Colors.greenAccent,
              ),
              title: Text('Saifi Amira'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.folder,
                color: Colors.greenAccent,
              ),
              title: Text('Ben cherif Hamza'),
            ),
          ],
        ),
      ),
    );
  }
}
