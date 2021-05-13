import 'package:flutter/material.dart';
import 'package:flutter_dicoding_pemula/models/learningPathItem.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'dart:async';

class LearningPage extends StatefulWidget {
  @override
  _LearningPage createState() => _LearningPage();
}

class _LearningPage extends State<LearningPage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();
  List listData;

  Future<String> loadLearning() async {
    var response = await rootBundle.loadString('json/learningpath.json');

    setState(() {
      listData = json.decode(response);
    });

    return "Successfull";
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 200)).then((_) {
      _refreshIndicatorKey.currentState?.show();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning Path"),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        child: ListView.builder(
          itemCount: listData == null ? 0 : listData.length,
          itemBuilder: (context, index) {
            return LearningPathItem(
              urlImage: listData[index]['thumbnail'],
              title: listData[index]['title'],
              descreption: listData[index]['description'],
              totalKelas: listData[index]['totalkelas'].toString(),
              content: listData[index]['konten'],
            );
          },
        ),
        onRefresh: () {
          if (listData != null) {
            setState(() {
              listData.clear();
            });
          }
          return Future.delayed(
            Duration(seconds: 1),
            () {
              loadLearning().then((value) => print(value));
            },
          );
        },
      ),
    );
  }
}
