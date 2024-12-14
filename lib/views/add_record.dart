// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({super.key});

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  int _selectedWeight = 70;
  DateTime _selectedDate = DateTime.now();

  void _customDatePicker(BuildContext context) {
    var initialDate = _selectedDate;
    showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: initialDate.subtract(Duration(days: 365)),
      lastDate: initialDate.add(Duration(days: 30)),
    ).then((date) {
      if (date != null) {
        setState(() {
          _selectedDate = date;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Record"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        FontAwesomeIcons.weightScale,
                        size: 32,
                        color: Colors.green.shade800,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            NumberPicker(
                              axis: Axis.horizontal,
                              itemCount: 3,
                              selectedTextStyle: TextStyle(
                                  fontSize: 24,
                                  color: Colors.green.shade800,
                                  fontWeight: FontWeight.bold),
                              step: 1,
                              itemWidth: 75,
                              itemHeight: 50,
                              minValue: 0,
                              maxValue: 300,
                              value: _selectedWeight,
                              onChanged: (value) {
                                setState(() {
                                  _selectedWeight = value;
                                });
                              },
                            ),
                            Icon(FontAwesomeIcons.chevronDown,
                                size: 14, color: Colors.green.shade800),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _customDatePicker(context);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(
                          FontAwesomeIcons.calendar,
                          size: 32,
                          color: Colors.green.shade800,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                              DateFormat('EEE, d MMM yy').format(_selectedDate),
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Add Record",
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
