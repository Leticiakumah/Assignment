import 'package:flutter/material.dart';
import 'package:my_delivery_app/Home_page.dart';
import 'package:my_delivery_app/signup.dart';

class My_delivery_app extends StatelessWidget {
  const My_delivery_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: const Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1633114073219-8c81a6bdb356?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60"),
          ),
        ),
        title: const Text("My delivery app",
            style: TextStyle(color: Colors.white)),
        actions: const [Icon(Icons.more_vert), Icon(Icons.search_outlined)],
      ),
      body: ListView(children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: CircleAvatar(
              radius: 90,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1633114073219-8c81a6bdb356?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60"),
            ),
          ),
        ),
        //This is my login page.
        TextFormField(
          decoration:
              const InputDecoration(label: Text(" Enter your username")),
        ),
        SizedBox(
          height: 50,
        ),
        TextFormField(
          decoration:
              const InputDecoration(label: Text(" Enter your password")),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 70.0,
            right: 70.0,
            top: 15,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70.0, right: 70.0, top: 15),
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpPage();
              }));
            },
            child: Text(
              "Create Account",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
            ),
          ),
        ),
      ]),
    );
  }
}
