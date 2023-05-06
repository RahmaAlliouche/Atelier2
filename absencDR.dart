import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'homeDR.dart';

class AbsenceDR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DomiCare',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AbsencePage(),
    );
  }
}

class AbsencePage extends StatefulWidget {
  @override
  _AbsencePageState createState() => _AbsencePageState();
}

class _AbsencePageState extends State<AbsencePage> {
  DateTime? _absenceDate;
  String? _absenceReason;
  TimeOfDay? _absenceTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        _absenceDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _absenceTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: ((context) => HomePageDR())));
          },
        ),
        backgroundColor: Colors.greenAccent,
        title: Text('Absence'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Full Name :',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  _absenceReason = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Full Name',
              ),
            ),
            Text(
              '        ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _selectDate(context);
                  },
                  child: Text(_absenceDate == null
                      ? 'Select Date'
                      : 'Date: ${_absenceDate!.day}/${_absenceDate!.month}/${_absenceDate!.year}'),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    _selectTime(context);
                  },
                  child: Text(_absenceTime == null
                      ? 'Select Time'
                      : 'Time: ${_absenceTime!.hour}:${_absenceTime!.minute}'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Absence Reason :',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  _absenceReason = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter Reason For absence',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // perform the submit action here
                _absenceReason = ''; // clear the absence reason text field
                setState(
                    () {}); // redraw the widget to show the updated text field
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
