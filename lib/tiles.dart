import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/callingConstructor.dart';
import 'package:dio/dio.dart';
import 'Constructor.dart';

class Tiles extends StatefulWidget {
  @override
  _TilesState createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  getDioData() async {
    var dio = Dio();
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/users');
    final welcome = welcomeFromJson(response.data);
    print(welcome[0]);
  }

  Welcome list = Welcome();
  @override
  Widget build(BuildContext context) {
    getDioData();

    return Scaffold(
      body: ListView.builder(
          itemCount: (list.length)?? 10,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text('${list.name[index]}'),
              subtitle: Text('${list.email[index]}'),
            );
          }),
    );
  }
}
