import 'package:flutter/material.dart';
import 'package:save/SingIn.dart';
import 'package:save/SingUp.dart';
import 'package:save/staff.dart';

import 'admin/login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF69F0AE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              height: 40,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => staff()));
              },
              child: Text(
                'staff medical',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            MaterialButton(
              minWidth: 150,
              height: 40,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                'Patient',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            MaterialButton(
              height: 40,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreenA()));
              },
              child: Text(
                'Administrator',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
