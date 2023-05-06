import 'package:flutter/material.dart';

import 'MenuAD.dart';

class MyPlanA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      home: AdminPage(),
    );
  }
}

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => HomePageA())));
          },
        ),
        title: Text("Task"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // background color
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              child: Text("Manage Services"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FolderManagementPage(),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

class FolderManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Manage Service"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              child: Text("Manage Medical Staff"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicalStaffManagementPage(),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              child: Text("Manage Material Staff"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicalStaffManagementPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MedicalStaffManagementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Manage Medical Staff"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            ElevatedButton.icon(
                onPressed: () {}, icon: Icon(Icons.add), label: Text('Add')),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.delete),
                label: Text('Delete')),
          ],
        ),
      ),
    );
  }
}
