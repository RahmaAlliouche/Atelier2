import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'menuN.dart';

class LoginScreenN extends StatefulWidget {
  @override
  loginscreenstate createState() => loginscreenstate();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sign In',
        home: LoginScreenN());
  }
}

class loginscreenstate extends State<LoginScreenN> {
  bool isRememberMe = false;

  Widget buildemail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, blurRadius: 7, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black38),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.greenAccent,
                ),
                hintText: 'Email',
                helperStyle: TextStyle(color: Colors.black38)),
          ),
        )
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
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, blurRadius: 7, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black38),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.greenAccent,
                ),
                hintText: 'Password',
                helperStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildforgotpass() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("forgot password"),
        child: Text(
          'Forgot Password ?',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildremember() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.greenAccent,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remind Me',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget buildloginbuttom() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((context) => HomePageN())));
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          child: Text(
            'LOGIN',
            style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFF69F0AE),
                      Color(0xFF69F0AE),
                      Color(0xFF69F0AE),
                      Color(0xFF69F0AE),
                    ])),
                child: SingleChildScrollView(
                  //pour scroll screen
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      buildemail(),
                      SizedBox(height: 50),
                      buildPassword(),
                      buildforgotpass(),
                      buildremember(),
                      buildloginbuttom(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
