
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
      body:Center(
        child: Container(
          height: 400,
          width: 500,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
          child: Center(
            child: dataResponse == null? Text("Data is loading ..."):
            Text(mapResponse!['data'].toString()),
            //Text(dataResponse!['first_name'].toString(),style: TextStyle(fontSize: 20),),
          ),
        ),
      ) ,
    );
  }
}
