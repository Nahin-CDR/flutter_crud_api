
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'get_request_page.dart';

class SingleItem extends StatelessWidget{
  const SingleItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Single User DEMO"),
      ),
      body:Column(
        children: [
          Container(
            margin: new EdgeInsets.all(10),
            height: 100,
            child: Image.network(dataResponse!['avatar'],)//Image.network("https://reqres.in/img/faces/2-image.jpg"),
          ),
          Container(
            margin: new EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
            height: 50,
            child: Center(
              child: Text("User ID : "+dataResponse!['id'].toString(),style: TextStyle(
                  fontSize: 20,
              ),),
            )
          ),
          Container(
            height: 50,
            margin: new EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
            child: Center(
              child: dataResponse == null? Text("Data is loading ..."):
              Text("First name : "+dataResponse!['first_name'].toString(),style: TextStyle(
                  fontSize: 20)
              ),
            ),
          ),
          Container(
            height: 50,
            margin: new EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
            child: Center(
              child: dataResponse == null? Text("Data is loading ..."):
              Text("Last Name : "+dataResponse!['last_name'].toString(),style: TextStyle(
                  fontSize: 20)
              ),
            ),
          ),
          Container(
            height: 50,
            margin: new EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
            child: Center(
              child: dataResponse == null? Text("Data is loading ..."):
              Text("Last Name : "+dataResponse!['last_name'].toString(),style: TextStyle(
                  fontSize: 20)
              ),
            ),
          ),
          Container(
            height: 50,
            margin: new EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
            child: Center(
              child: dataResponse == null? Text("Data is loading ..."):
              Text("Email : "+dataResponse!['email'].toString(),style: TextStyle(
                  fontSize: 20),
              )
            ),
          ),
          Container(
            height: 200,
            margin: new EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.grey),
            child: Center(
              child: supportResponse == null?Text("Data is loading .."):
              Text(supportResponse!['text'].toString(),style: TextStyle(
                fontSize: 20
              ),),
            )


          )
        ],
      ) ,
    );
  }
}
