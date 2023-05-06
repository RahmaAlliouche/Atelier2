import 'package:flutter/material.dart';
import 'package:save/admin/planningA.dart';

import 'Profil.dart';
import 'absenceA.dart';

class HomePageA extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePageA> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/back.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'image/prof.png'), // replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: MaterialButton(
                              height: 100.0,
                              minWidth: 100.0,
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyProfA())));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                10.0), // add some spacing between the button and text
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'image/plan.png'), // replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: MaterialButton(
                              height: 100.0,
                              minWidth: 100.0,
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => MyPlanA())));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                10.0), // add some spacing between the button and text
                        Text(
                          'Task',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'image/traverser.png'), // replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: MaterialButton(
                              height: 100.0,
                              minWidth: 100.0,
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: ((context) => AbsenceA())));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                10.0), // add some spacing between the button and text
                        Text(
                          'Abcense',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'image/port.png'), // replace with your image path
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: MaterialButton(
                              height: 100.0,
                              minWidth: 100.0,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                            height:
                                10.0), // add some spacing between the button and text
                        Text(
                          'My Edite',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
