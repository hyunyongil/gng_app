import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key? key}) : super(key: key);

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 30);
  // _showDatePicker() {
  //   showDatePicker(
  //           context: context,
  //           initialDate: _nowDate,
  //           firstDate: DateTime(1980),
  //           lastDate: DateTime(2100))
  //       .then((result) {
  //     print(result);
  //   });
  // }

  _showDatePicker() async {
    var result = await showDatePicker(
        context: context,
        initialDate: _nowDate,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100),
        locale: Locale('zh'));
    //print(result);
    setState(() {
      _nowDate = result!;
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: _nowTime,
    );
    //print(result);
    setState(() {
      _nowTime = result!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // var now = DateTime.now();
    //print(now);//2022-07-04 18:48:38.680087
    // print(now.millisecondsSinceEpoch);
    // print(DateTime.fromMillisecondsSinceEpoch(1656931994913));
    // print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${formatDate(_nowDate, [
                          yyyy,
                          '年',
                          mm,
                          '月',
                          dd,
                          '日'
                        ])}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${_nowTime.format(context)}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showTimePicker,
              )
            ],
          )
        ],
      ),
    );
  }
}
