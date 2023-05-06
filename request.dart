import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../doctor/MenuD.dart';
import 'MenuP.dart';

class Request extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Request",
      theme: ThemeData(
        primaryColor: Colors.green, // Set primary color to green
      ),
      home: HomePageR(),
    );
  }
}

class HomePageR extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePageR> {
  TextEditingController dateinput = TextEditingController();

  TextEditingController timeinput = TextEditingController();
  String? _selectedOption;
  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  void initStat() {
    timeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Request"),
          backgroundColor: Colors.greenAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: ((context) => HomePagee())),
              );
            },
          ),
        ),
        body: Theme(
            data: ThemeData(
              primaryColor: Colors.greenAccent, // Set primary color to green
              accentColor: Colors.blue, // Set accent color to blue
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: timeinput,
                  decoration: InputDecoration(
                    icon: Icon(Icons.timer),
                    labelText: "Enter Time",
                  ),
                  readOnly: true,
                  onTap: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                      initialTime: TimeOfDay.now(),
                      context: context,
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData(
                            primaryColor: Colors.greenAccent,
                            accentColor:
                                Colors.blue, // Set accent color to blue
                          ),
                          child: child!,
                        );
                      },
                    );

                    if (pickedTime != null) {
                      print(pickedTime.format(context));
                      DateTime parsedTime = DateFormat.jm()
                          .parse(pickedTime.format(context).toString());

                      print(parsedTime);
                      String formattedTime =
                          DateFormat('HH:mm:ss').format(parsedTime);
                      print(formattedTime); //output 14:59:00

                      setState(() {
                        timeinput.text = formattedTime;
                      });
                    } else {
                      print("Time is not selected");
                    }
                  },
                  style: TextStyle(color: Colors.greenAccent),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 150,
                  child: Center(
                    child: TextField(
                      controller: dateinput,
                      decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today),
                        labelText: "Enter Date",
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                            builder: (BuildContext context, Widget? child) {
                              return Theme(
                                data: ThemeData(
                                  backgroundColor: Colors.greenAccent,
                                  colorScheme: ColorScheme.fromSwatch().copyWith(
                                      secondary: Colors
                                          .greenAccent), // Set accent color to green
                                ),
                                child: child!,
                              );
                            });

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate);

                          setState(() {
                            dateinput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  ),
                ),
                DropdownButton<String>(
                  value: _selectedOption, // use the state variable as the value
                  hint: Text(
                    'Select Specialiste',
                    style: TextStyle(color: Colors.greenAccent),
                  ),
                  items: <String>[
                    'Allergists',
                    'Dermatologists',
                    'Infectious disease doctors',
                    'Ophthalmologists',
                    'Obstetrician/gynecologists',
                    'Cardiologists',
                    'Gastroenterologists',
                    'Nephrologists',
                    'Pulmonologists',
                    'Otolaryngologists',
                    'Neurologists',
                    'Oncologists',
                    'Radiologists',
                    'Rheumatologists',
                    'General doctor',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedOption = newValue; // update the state variable
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform some action when the button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    primary: Colors.greenAccent, // Set the background color
                    textStyle: TextStyle(
                      color: Colors.white, // Set the text color
                    ),
                  ),
                  child: Text('Submit'),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Perform some action when the button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent, // Set the background color
                    textStyle: TextStyle(
                      color: Colors.white, // Set the text color
                    ),
                  ),
                  child: Text('Cancel '),
                )
              ],
            )));
  }
}
