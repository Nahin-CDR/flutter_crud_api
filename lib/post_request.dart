import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_api/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'get_request_page.dart';
import 'user_model.dart';
import 'package:flutter/cupertino.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String userName = "";
String id = "";
double createdTime =0.0;
String job = "";

Future<UserModel?> createUser(String name, String jobTitle) async{

  final String apiUrl = "https://reqres.in/api/users";
  final response = await http.post(Uri.parse(apiUrl), body: {
    "name": name,
    "job": jobTitle
  });

  if(response.statusCode == 201){
    final String responseString = response.body;
    print(responseString);
    return userModelFromJson(responseString);
  }else{
    return null;
  }
}


class _MyHomePageState extends State<MyHomePage> {


  final TextEditingController nameController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  late UserModel _userModel;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Http Post Request API"),
      ),
      body:Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[

            TextField(
              controller: nameController,
            ),

            TextField(
              controller: jobController,
            ),

            SizedBox(height: 32,),
            Text("Name : "+userName+"\nid : "+id),
            Text("Job title : "+job),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          final String name = nameController.text;
          final String jobTitle = jobController.text;

          final UserModel? user = await createUser(name, jobTitle);
          setState(() {
            _userModel = user!;
            userName = _userModel.name;
            id = _userModel.id;
            // createdTime = _userModel.createdAt;
            job = _userModel.job;

          });


        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



