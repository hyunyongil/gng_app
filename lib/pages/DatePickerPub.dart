import 'package:flutter/material.dart';

class DatePickerPub extends StatefulWidget {
  DatePickerPub({Key? key}) : super(key: key);

  @override
  State<DatePickerPub> createState() => _DatePickerPubState();
}

class _DatePickerPubState extends State<DatePickerPub> {
  _showDatePicker() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("日期选择"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text("2022-07-05"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}
