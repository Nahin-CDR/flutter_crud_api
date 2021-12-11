
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'get_request_page.dart';



class ListItems extends StatelessWidget{
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("List View API"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(listResponse![index]['avatar']),
              ),
              Text("id :"),
              Text(listResponse![index]['id'].toString()),
              Text(listResponse![index]['email'].toString()),
              Text(listResponse![index]['first_name'].toString()),
              Text(listResponse![index]['last_name'].toString()),
            ],
          ),
        );
      },
        itemCount: listResponse == null?0:listResponse!.length,
      ),
    );


  }
}