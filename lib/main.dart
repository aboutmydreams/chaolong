import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:async';
import 'data/class1.dart';

Dio dio = Dio();

Future<Post1> fetchPost() async {
  Response response = await dio.get('https://jsonplaceholder.typicode.com/posts/1');
  print(response.data.runtimeType);
  return new Post1.fromJson(response.data);
}


class Post1 {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post1({this.userId, this.id, this.title, this.body});

  factory Post1.fromJson(Map<String, dynamic> json) {
    return new Post1(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fetch Data Example',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Fetch Data Example'),
        ),
        body: new Center(
          child: new FutureBuilder<Post1>(
            future: fetchPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return new CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

