import 'package:flutter/material.dart';

class DatePickerPub extends StatefulWidget {
  DatePickerPub({Key? key}) : super(key: key);

  @override
  State<DatePickerPub> createState() => _DatePickerPubState();
}

class _DatePickerPubState extends State<DatePickerPub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("日期"),
      ),
      body: Text("DatePickerPub"),
    );
  }
}
