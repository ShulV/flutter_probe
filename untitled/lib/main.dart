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
            ),
            // === ряд кнопок иконок ===========================================
            Container(
              margin: const EdgeInsets.all(20.0),
              child:


              Row( // Используем Row для расположения кнопок по горизонтали
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                        Icons.favorite,
                        size: 64, color:
                    Colors.deepOrangeAccent),
                    onPressed: () {
                      // Действие при нажатии
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                        Icons.star,
                        size: 72, color:
                    Colors.amber),
                    onPressed: () {
                      // Действие при нажатии
                    },
                  ),
                ],
              ),
              // ===============================================================
            ),
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