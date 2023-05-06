import 'package:flutter/material.dart';

import 'MenuP.dart';

class MyDoss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Medical Folder'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: ((context) => HomePagee())));
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Text(
            'Upload your medical folder here please(PDF file)',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(Icons.upload_file),
            tooltip: 'Upload your medical folder (PDF file)',
            onPressed: () {},
            iconSize: 30.0,
          ),
          Center(
            child: Text(
              'Check your medical files',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Medical files'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Send',
        onPressed: () {},
        child: Icon(
          Icons.send,
        ),
      ),
    );
  }
}
