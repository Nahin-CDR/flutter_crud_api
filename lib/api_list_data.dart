
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
              Container(
                height: 137,
                margin: new EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.green),
                child: Image.network(listResponse![index]['avatar']),
              ),
              Container(
                height: 30,
                margin: new EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
                child: Center(
                  child: listResponse![index]['id'] == null ?Text("Loading data"):
                  Text("ID : "+listResponse![index]['id'].toString(),style: TextStyle(
                    fontSize: 18
                  ),
                  ),
                ),
              ),
              Container(
                height: 30,
                margin: new EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
                child: Center(
                  child: listResponse![index]['email'] == null ?Text("Loading data"):
                  Text("Email : "+listResponse![index]['id'].toString(),style: TextStyle(
                      fontSize: 18
                  ),
                  ),
                ),
              ),
              Container(
                height: 30,
                margin: new EdgeInsets.only(left: 10,right: 10,top: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
                child: Center(
                  child: listResponse![index]['first_name'] == null ?Text("Loading data"):
                  Text("First Name : "+listResponse![index]['first_name'].toString(),style: TextStyle(
                      fontSize: 18
                  ),
                  ),
                ),
              ),
              Container(
                height: 30,
                margin: new EdgeInsets.only(left: 10,right: 10,top: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.greenAccent),
                child: Center(
                  child: listResponse![index]['last_name'] == null ?Text("Loading data"):
                  Text("Last Name : "+listResponse![index]['last_name'].toString(),style: TextStyle(
                      fontSize: 18
                  ),
                  ),
                ),
              ),
              Container(
                margin: new EdgeInsets.only(top: 20,bottom: 20),
                height: 1,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.redAccent),
              )
            ],
          ),
        );
      },
        itemCount: listResponse == null?0:listResponse!.length,
      ),
    );
  }
}