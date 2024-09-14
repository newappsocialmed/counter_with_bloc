import 'dart:convert';
import 'package:dio/dio.dart';

class AuthRepo{

  Future<List>signin({required String name, required String password})async{
    final dio = Dio();
    try{
      String url  = 'https://backend-siddharths-projects-8726388c.vercel.app/api/auth/signin';
      var data = {"name":name, "password":password};
      var response = await dio.post(url, data: jsonEncode(data));
      return [
        {
          "status":response.data['status'],
          "msg":response.data['msg']
        }
      ];
    }catch(e){
      return [{"msg":'Signin Failed'}];
    }
  }

  Future<List>login({required String name, required String password})async{
    final dio = Dio();
    try{
      String url  = 'https://backend-siddharths-projects-8726388c.vercel.app/api/auth/login';
      var data = {"name":name, "password":password};
      var response = await dio.post(url, data: jsonEncode(data));
      return [
        {
          'status':response.data['status'],
          'msg':response.data['msg'],
          'value':response.data['value'],
          'id':response.data['id'],
        }
      ];
    }catch(e){
      return [{"msg":'Login Failed'}];
    }
  }

  Future<List>updatevalue({required int id})async{
    final dio = Dio();
    try{
      String url  = 'https://backend-siddharths-projects-8726388c.vercel.app/api/screens/flutter';
      var data = {"id":id};
      var response = await dio.post(url, data: jsonEncode(data));
      if(response.statusCode == 200){
        return [
          {
            "status":response.data['status'],
            "msg":response.data['msg'],
            "value":response.data['value']
          }
        ];
      }else {
        return [
          {
            "status":'failed',
            "msg":'Value update failed'
          } 
        ];
      }
    }catch(e){
      return [{"msg":'value update failed'}];
    }
  }
}