import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'api_exception.dart';

class HttpClient{
  HttpClient._privateConstructor();
  static final HttpClient _instance = HttpClient._privateConstructor();
  factory HttpClient(){
    return _instance;
  }
  Future<dynamic> getRequest(String path) async{
    Response response;
    try{
      response = await get(path);
      final statuscode = response.statusCode;
      if(statuscode >= 200 && statuscode < 299){
        if(response.body.isEmpty){
          
        }
      }
    }on SocketException{

    }
  }
}