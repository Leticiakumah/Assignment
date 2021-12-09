import 'package:flutter/material.dart';
import 'package:my_delivery_app/Home_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(
          child: Text(
            "Create new Account",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      //This is my create account page.
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(label: Text("Firstname")),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(label: Text("Surname")),
          ),
          TextFormField(
            decoration: InputDecoration(label: Text("Email")),
          ),
          TextFormField(
            decoration: InputDecoration(label: Text("Password")),
          ),
          TextFormField(
            decoration: InputDecoration(label: Text("Confirm")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
