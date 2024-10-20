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
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Image.network("https://www.amic.ru/images/post_gallery/gallery/3396/40072/large.jpg?_=1994635747"),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Image.asset("assets/images/skatepark_asset.jpg"),
            )
          ],
        ),

        
        // const Center(
        //
          // child: Text("Some spot info", style: TextStyle(
          //   fontSize: 20,
          //   color: Colors.black,
          //   fontFamily: "PlaywriteGBS-Regular"
          // ),),
        // ),
        
        
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