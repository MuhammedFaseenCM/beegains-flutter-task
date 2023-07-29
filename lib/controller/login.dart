import 'dart:convert';

import 'package:beegains/model/login_model.dart';
import 'package:http/http.dart' as http;

Future<Beegains> login(
    {required String username, required String password}) async {

  String url = 'http://143.110.181.12:7070/api/login';

  Map<String, dynamic> data = {
    'username': username,
    'password': password,
  };


  try {
    final response = await http.post(Uri.parse(url), body: data);
    print(url);

    if (response.statusCode == 200) {
  
      var json = jsonDecode(response.body);

      return Beegains.fromJson(json);
    } else {
 
      return Beegains.fromJson({});
    }
  } catch (e) {

    return Beegains.fromJson({});
  }
}
