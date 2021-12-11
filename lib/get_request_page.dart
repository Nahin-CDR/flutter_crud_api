import 'package:flutter_crud_api/get_single_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'api_list_data.dart';


String? stringResponse;
Map? mapResponse;
Map? dataResponse;
Map? supportResponse;
List? listResponse;


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage>{

    Future apicall()async{     //https://reqres.in/api/users/2 = single user
    http.Response response; //https://reqres.in/api/users?page=2 = user list
    response = await http.get(Uri.parse("https://reqres.in/api/users?page=2") ); /** API URL get request**/
    if(response.statusCode == 200)
    {
        setState((){
        //stringResponse = response.body;
        mapResponse = json.decode(response.body);
        //dataResponse = mapResponse!['data'];
       // supportResponse = mapResponse!['support'];
        listResponse = mapResponse!['data'];
      });
    }
  }
  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListItems();//SingleItem();
  }
}

