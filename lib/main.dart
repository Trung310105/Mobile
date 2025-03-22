import 'dart:math';

import 'package:flutter/material.dart';

import 'build_container.dart';
import 'build_container_day.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<Map<String, dynamic>> events = [
    {
      "time": "07:00",
      "session": "AM",
      "title": "CTDL & GT",
      "description": "Nguyễn Duy Phương",
    },
    {
      "time": "09:00",
      "session": "AM",
      "title": "Lí thuyết thông tin",
      "description": "Phạm Văn Sự",
    },
    {
      "time": "13:00",
      "session": "PM",
      "title": "Tư tưởng HCM",
      "description": "Phạm Thị Khánh",
    },
    {
      "time": "15:00",
      "session": "PM",
      "title": "Toán rời rạc 2",
      "description": "Nguyễn Tất Thắng",
    },
    {
      "time": "10:00",
      "session": "AM",
      "title": "Xác suất thống kê",
      "description": "Nguyễn Thị Minh Tâm",
    },
    {
      "time": "16:00",
      "session": "PM",
      "title": "Xử lý tín hiệu số",
      "description": "Trần Thị Thục Linh",
    },
  ];

  final int index = 0;

  late int _index;
  @override
  void initState() {
    super.initState();
    _index = index;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            title: Text(
              'Đức Trung',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          floatingActionButton: InkWell(
            onTap: () => setState(() {
              int tmp = Random().nextInt(events.length);
              while(tmp == _index)
              {
                tmp = Random().nextInt(events.length);
              }
              _index = tmp;
            }),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.shade200,
              ),
            ),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 45),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BuildContainerDay(
                          number: "15",
                          day: "Mon",
                        ),
                        BuildContainerDay(
                          number: "16",
                          day: "Tue",
                        ),
                        BuildContainerDay(
                          number: "17",
                          day: "Wed",
                        ),
                        BuildContainerDay(
                          number: "18",
                          day: "Thu",
                        ),
                        BuildContainerDay(
                          number: "19",
                          day: "Thu",
                        ),
                        BuildContainerDay(
                          number: "20",
                          day: "Thu",
                        ),
                        BuildContainerDay(
                          number: "22",
                          day: "Thu",
                        ),
                        BuildContainerDay(
                          number: "23",
                          day: "Thu",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  BuildContainer(
                      time: events[_index]["time"],
                      session: events[_index]["session"],
                      title: events[_index]["title"],
                      desc: events[_index]["description"])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
