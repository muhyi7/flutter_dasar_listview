import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  List<Widget> myList = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(
        fontSize: 100 + double.parse(index.toString()),
      ),
    ),
  );

  // List<Widget> myList = [
  //   Container(
  //     height: 300,
  //     width: 300,
  //     color: Colors.red,
  //   ),
  //   Container(
  //     height: 300,
  //     width: 300,
  //     color: Colors.green,
  //   ),
  //   Container(
  //     height: 300,
  //     width: 300,
  //     color: Colors.blue,
  //   ),
  //   Container(
  //     height: 300,
  //     width: 300,
  //     color: Colors.amber,
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("List View"),
          ),
          body: ListView(
            children: myList,
          )
          // (
          //   separatorBuilder: (context, index) {
          //     return Divider(
          //       color: Colors.black,
          //     );
          //   },
          //   itemCount: myColor.length,
          //   itemBuilder: (context, index) {
          //     // return Container(
          //     //   height: 300,
          //     //   width: 300,
          //     //   color: myColor[index],
          //     // );
          //     return myList;
          //   },
          // ),
          ),
    );
  }
}
