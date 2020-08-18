import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: '서울 사이버맨 대학교'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Major {SOFTWARE, WEBSOLUTION, DESIGN}
DateTime now = DateTime.now();
final startOfRangeOfYear = 2000;
final endOfRangeOfYear = 2040;

class _MyHomePageState extends State<MyHomePage> {
  Major _major = Major.WEBSOLUTION;
  final _valueList = ['Freshman', 'Senior', 'Junior'];
  var _selectedValue = 'Freshman';
  DateTime selectedDate;
  final _yearValueList = [for(var i=startOfRangeOfYear; i<=endOfRangeOfYear; i++) i];
  final _monthValueList = [for(var i=1; i<=12; i++) i];
  final _dayValueList = [for(var i=1; i<=31; i++) i];
  var _selectedYearVal_entrance = now.year;
  var _selectedMonthVal_entrance = now.month;
  var _selectedDayVal_entrance = now.day;
  var _selectedYearVal_graduate = now.year+3;
  var _selectedMonthVal_graduate = now.month;
  var _selectedDayVal_graduate = now.day;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.apps)),
              Tab(text: 'Form'),
              Tab(text: 'temp'),
              Tab(text: 'temp'),
            ],
          )
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
                child:Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              color: Colors.deepOrangeAccent,
                              width:100, height: 100,
                            ),
                            Container(
                              color: Colors.amber,
                              width:100, height: 100,
                            ),
                            Container(
                              color: Colors.lightBlue,
                              width:100, height: 100,
                            ),
                          ]
                      ),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              color: Colors.deepOrangeAccent,
                              width:100, height: 100,
                            ),
                            Container(
                              color: Colors.amber,
                              width:100, height: 100,

                            ),
                            Container(
                              color: Colors.lightBlue,
                              width:100, height: 100,
                            ),
                          ]
                      ),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            Container(
                              color: Colors.deepOrangeAccent,
                              width:100, height: 100,
                            ),
                            Container(
                              color: Colors.amber,
                              width:100, height: 100,
                            ),
                            Container(
                              color: Colors.lightBlue,
                              width:100, height: 100,
                            ),
                          ]
                      ),
                    ]
                ),
              ),
            //Widget page
            SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left:15, right:15),

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children:<Widget>[
                          SizedBox( height: 15 ),
                          Text('Informations',
                            style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold,),
                            textAlign: TextAlign.left),
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                            elevation: 4,
                            child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left:10, right:10),
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox( height: 15 ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Expanded(child: TextField(
                                              decoration: InputDecoration(
                                                border:OutlineInputBorder(),
                                                labelText: 'Name',
                                                hintText: 'Input your name',
                                              ),
                                              onChanged: (value){},
                                            ),),
                                            SizedBox( width: 10 ),
                                            Expanded(child: TextField(
                                              inputFormatters: [WhitelistingTextInputFormatter(RegExp('[0-9]')),],
                                              decoration: InputDecoration(
                                                border:OutlineInputBorder(),
                                                labelText: 'Student number',
                                                hintText: 'Input your number',
                                              ),
                                              onChanged: (value){},
                                            ),),
                                          ],
                                        ),
                                        SizedBox( height: 15 ),
                                        RadioListTile(
                                          title: Text('New media software'),
                                          value: Major.SOFTWARE,
                                          groupValue: _major,
                                          onChanged: (value){
                                            setState(() {
                                              _major = value;
                                            });
                                          },
                                        ),
                                        RadioListTile(
                                          title: Text('New media web solution'),
                                          value: Major.WEBSOLUTION,
                                          groupValue: _major,
                                          onChanged: (value){
                                            setState(() {
                                              _major = value;
                                            });
                                          },
                                        ),
                                        RadioListTile(
                                          title: Text('New media design'),
                                          value: Major.DESIGN,
                                          groupValue: _major,
                                          onChanged: (value){
                                            setState(() {
                                              _major = value;
                                            });
                                          },
                                        ),
                                        SizedBox( height: 10 ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text('Grade', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                            SizedBox( width: 20 ),
                                            DropdownButton(
                                              value: _selectedValue,
                                              items: _valueList.map(
                                                      (value){
                                                    return DropdownMenuItem(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }
                                              ).toList(),
                                              onChanged: (value){
                                                setState(() {
                                                  _selectedValue = value;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        SizedBox( height: 20 ),
                                        Text('Date of your entrance', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                        Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              DropdownButton(
                                                value: _selectedYearVal_entrance,
                                                items: _yearValueList.map(
                                                        (value){
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value.toString()),
                                                      );
                                                    }
                                                ).toList(),
                                                onChanged: (value){
                                                  setState(() {
                                                    _selectedYearVal_entrance = value;
                                                  });
                                                },
                                              ),
                                              Text('년'), SizedBox(width: 10 ),
                                              DropdownButton(
                                                value: _selectedMonthVal_entrance,
                                                items: _monthValueList.map(
                                                        (value){
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value.toString()),
                                                      );
                                                    }
                                                ).toList(),
                                                onChanged: (value){
                                                  setState(() {
                                                    _selectedMonthVal_entrance = value;
                                                  });
                                                },
                                              ),
                                              Text('월'), SizedBox(width: 10 ),
                                              DropdownButton(
                                                value: _selectedDayVal_entrance,
                                                items: _dayValueList.map(
                                                        (value){
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value.toString()),
                                                      );
                                                    }
                                                ).toList(),
                                                onChanged: (value){
                                                  setState(() {
                                                    _selectedDayVal_entrance = value;
                                                  });
                                                },
                                              ),
                                              Text('일'), SizedBox(width: 15 ),
                                              FlatButton(
                                                child: Text('Calendar', style: TextStyle(fontSize: 15),),
                                                onPressed: () {
                                                  Future<
                                                      DateTime> selectedDate = showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                    DateTime(
                                                        _selectedYearVal_entrance,
                                                        _selectedMonthVal_entrance,
                                                        _selectedDayVal_entrance),
                                                    firstDate: DateTime(
                                                        startOfRangeOfYear),
                                                    lastDate: DateTime(
                                                        endOfRangeOfYear),
                                                    builder: (
                                                        BuildContext context,
                                                        Widget child) {
                                                      return Theme(
                                                        data: ThemeData.dark(),
                                                        child: child,
                                                      );
                                                    },
                                                  );
                                                  selectedDate.then((dateTime) {
                                                    setState(() {
                                                      _selectedYearVal_entrance =
                                                          dateTime.year;
                                                      _selectedMonthVal_entrance =
                                                          dateTime.month;
                                                      _selectedDayVal_entrance =
                                                          dateTime.day;
                                                    });
                                                  });
                                                }, // onPressed
                                              ),
                                            ],
                                          ),
                                        SizedBox( height: 15 ),
                                        Text('Date of your graduate', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                                        Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              DropdownButton(
                                                value: _selectedYearVal_graduate,
                                                items: _yearValueList.map(
                                                        (value){
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value.toString()),
                                                      );
                                                    }
                                                ).toList(),
                                                onChanged: (value){
                                                  setState(() {
                                                    _selectedYearVal_graduate = value;
                                                  });
                                                },
                                              ),
                                              Text('년'), SizedBox(width: 10 ),
                                              DropdownButton(
                                                value: _selectedMonthVal_graduate,
                                                items: _monthValueList.map(
                                                        (value){
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value.toString()),
                                                      );
                                                    }
                                                ).toList(),
                                                onChanged: (value){
                                                  setState(() {
                                                    _selectedMonthVal_graduate = value;
                                                  });
                                                },
                                              ),
                                              Text('월'), SizedBox(width: 10 ),
                                              DropdownButton(
                                                value: _selectedDayVal_graduate,
                                                items: _dayValueList.map(
                                                        (value){
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(value.toString()),
                                                      );
                                                    }
                                                ).toList(),
                                                onChanged: (value){
                                                  setState(() {
                                                    _selectedDayVal_graduate = value;
                                                  });
                                                },
                                              ),
                                              Text('일'), SizedBox(width: 15 ),
                                              FlatButton(
                                                child: Text('Calendar', style: TextStyle(fontSize: 15),),
                                                onPressed: () {
                                                  Future<
                                                      DateTime> selectedDate = showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                    DateTime(
                                                        _selectedYearVal_graduate,
                                                        _selectedMonthVal_graduate,
                                                        _selectedDayVal_graduate),
                                                    firstDate: DateTime(
                                                        startOfRangeOfYear),
                                                    lastDate: DateTime(
                                                        endOfRangeOfYear),
                                                    builder: (
                                                        BuildContext context,
                                                        Widget child) {
                                                      return Theme(
                                                        data: ThemeData.dark(),
                                                        child: child,
                                                      );
                                                    },
                                                  );
                                                  selectedDate.then((dateTime) {
                                                    setState(() {
                                                      _selectedYearVal_graduate =
                                                          dateTime.year;
                                                      _selectedMonthVal_graduate =
                                                          dateTime.month;
                                                      _selectedDayVal_graduate =
                                                          dateTime.day;
                                                    });
                                                  });
                                                }, // onPressed
                                              ),
                                            ],
                                          ),
                                        SizedBox( height: 15 ),
                                        Container(
                                          width: 200, height: 200,

                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        ]
                    ),),
                ],
              ),
            ),
          SingleChildScrollView(

          ),
          SingleChildScrollView(
          ),
          ],
        )
      ),
    );
  }
}
