import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Xmap"),
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Some spot info", style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: "PlaywriteGBS-Regular"
          ),),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.deepOrangeAccent,
            onPressed: () {
              print("CLICKED!");
            },
            child: Text("Click")),
      ),
    );
  }
}