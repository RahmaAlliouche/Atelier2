import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'package:save/doctor/MenuD.dart';
import 'package:save/patient/MenuP.dart';

import 'home.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'signup',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: EditeProfile(),
    );
  }
}

class EditeProfile extends StatefulWidget {
  @override
  _EditeProfileState createState() => _EditeProfileState();
}

class _EditeProfileState extends State<EditeProfile> {
  bool isobscurePass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Sing Up'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: ((context) => Home())));
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 10, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1)),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/prof.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 4, color: Colors.white),
                          color: Colors.greenAccent,
                        ),
                        child: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildFirstName(),
              SizedBox(
                height: 25,
              ),
              buildLastName(),
              SizedBox(
                height: 25,
              ),
              buildemail(),
              SizedBox(
                height: 25,
              ),
              buildAdress(),
              SizedBox(
                height: 25,
              ),
              buildPassword(),
              SizedBox(
                height: 25,
              ),
              buildconfirmePassword(),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    'Upload your medical folder here please(PDF file)',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  IconButton(
                    icon: Icon(Icons.upload_file),
                    tooltip: 'Upload your medical folder (PDF file)',
                    onPressed: () {},
                    iconSize: 30.0,
                  ),
                ],
              ),
              buildloginbuttom(),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildloginbuttom() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => HomePagee())));
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.greenAccent)),
          child: Text(
            'Sign Up',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget buildconfirmePassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Confirme Password',
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 7,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 40,
            width: 1600,
            child: TextField(
              obscureText: isobscurePass,
              style: TextStyle(color: Colors.black38),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: -3, left: 10),
                hintText: ' ',
                helperStyle: TextStyle(color: Colors.black),
                suffixIcon: IconButton(
                  icon: Icon(
                    isobscurePass ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isobscurePass = !isobscurePass;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 7,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            height: 40,
            width: 1600,
            child: TextField(
              obscureText: isobscurePass,
              style: TextStyle(color: Colors.black38),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: -3, left: 10),
                hintText: ' ',
                helperStyle: TextStyle(color: Colors.black),
                suffixIcon: IconButton(
                  icon: Icon(
                    isobscurePass ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isobscurePass = !isobscurePass;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLastName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Laste Name',
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]),
            height: 40,
            width: 1600,
            child: TextField(
              obscureText: false,
              style: TextStyle(color: Colors.black38),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: -3, left: 10),
                hintText: 'laste name',
                helperStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildFirstName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'First Name',
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]),
            height: 40,
            width: 1600,
            child: TextField(
              obscureText: false,
              style: TextStyle(color: Colors.black38),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: -3, left: 10),
                hintText: 'first name',
                helperStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildemail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]),
            height: 40,
            width: 1600,
            child: TextField(
              obscureText: false,
              style: TextStyle(color: Colors.black38),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: -3, left: 10),
                hintText: 'email',
                helperStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildAdress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Adress',
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]),
            height: 40,
            width: 1600,
            child: TextField(
              obscureText: false,
              style: TextStyle(color: Colors.black38),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: -3, left: 10),
                hintText: 'adress',
                helperStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
