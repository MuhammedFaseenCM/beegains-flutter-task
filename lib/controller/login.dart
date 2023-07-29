import 'dart:convert';

import 'package:beegains/model/login_model.dart';
import 'package:http/http.dart' as http;

Future<Beegains> login(
    {required String username, required String password}) async {
  // Replace with your API endpoint URL
  String url = 'http://143.110.181.12:7070/api/login';

  // Create a map of your login credentials
  Map<String, dynamic> data = {
    'username': username,
    'password': password,
  };

  // Make the POST request
  try {
    final response = await http.post(Uri.parse(url), body: data);
    print(url);

    if (response.statusCode == 200) {
      // Request successful, handle the response
      print('Login successful! Response: ${response.body}');
      var json = jsonDecode(response.body);

      return Beegains.fromJson(json);
    } else {
      // Request failed, handle the error
      print('Login failed. Status Code: ${response.statusCode}');
      return Beegains.fromJson({});
    }
  } catch (e) {
    // Exception occurred during the request
    print('Error occurred: $e');
    return Beegains.fromJson({});
  }
}
