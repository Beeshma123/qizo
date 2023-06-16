import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'free.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var username=TextEditingController();
  var password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
        centerTitle: true,
      ),
body: Center(
  child:Column(
      children:[
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      controller: username,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: "Username",hintText: "Enter your Username",
      ),
    ),

  ),
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      controller: password,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: "Password",hintText: "Enter your password",
      ),
      obscureText: true,

    ),
  ),
      SizedBox(
        height: 75,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          OutlinedButton(
          onPressed: (){}, child: Text("Cancel",
    style: TextStyle(fontSize: 14,
    letterSpacing: 2.2,
    color: Colors.black,
    ),)),
            ElevatedButton(onPressed: (){
          Fluttertoast.showToast(msg:"Register success",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,timeInSecForIosWeb:3,
            backgroundColor: Colors.blue,
            fontSize: 10,
          );
          Timer(
              Duration(seconds: 3),
                  () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) =>Free())));
        },child: Text("OK")),

],
      ),
    ],
    ),
    )
    );
  }
}
