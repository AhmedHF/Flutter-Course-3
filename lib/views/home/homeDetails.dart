import 'dart:async';
import 'package:flutter/material.dart';

class HomeDetails extends StatefulWidget {
  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 1000000)));
    if (picked != null && picked != selectedDate)
      setState(() {
        print('--------------------------------');
        print(picked);
        selectedDate = picked;
        _selectTime();
      });
  }

  void _selectTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
        final snackBar = SnackBar(
          content: Text('Datetime: ' +
              "${selectedDate.toLocal()}".split(' ')[0] +
              ' ${_time.format(context)}'),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selected Date : ',
                ),
                Text("${selectedDate.toLocal()}".split(' ')[0]),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Selected time: ${_time.format(context)}',
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () => _selectDate(context),
              splashColor: Colors.blue,
              highlightColor: Colors.blue[700],
              child: Container(
                color: Colors.grey[400],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Select date and time',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
