// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          // leading: Center(
          //   child: CircleAvatar(
          //     backgroundColor: Colors.blueGrey,
          //   ),
          // ),
          title: const Text("Welcome to my delivery page",
              style: TextStyle(color: Colors.white)),
          actions: const [
            // Icon(Icons.read_more_outlined),
            // Icon(Icons.search_off_rounded)
          ],
        ),
        body: ListView(children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
                child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1633114073219-8c81a6bdb356?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60"),
              ),
              title: Text(
                "Food delivery services",
                style: TextStyle(
                    color: Colors.indigo,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
            )),
          )
        ]));
  }
}
