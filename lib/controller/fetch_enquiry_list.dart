import 'dart:convert';

import 'package:beegains/model/enquirylist_model.dart';
import 'package:http/http.dart' as http;

Future<EnquiryList> fetchEnquiryList(String token) async {
  String url = 'http://143.110.181.12:7070/api/get_enquiries';

  String page = '1';
  String franchiseId = '2';
  String search = '';
  String fromDate = '';
  String toDate = '';
  String estStatus = '';
  String jobcards = '0';

  // Build the complete URL with query parameters
  Uri uri = Uri.parse(
      '$url?page=$page&franchise_id=$franchiseId&search=$search&from_date=$fromDate&to_date=$toDate&est_status=$estStatus&jobcards=$jobcards');

  // Set up the headers with the Bearer token
  Map<String, String> headers = {
    'Authorization': 'Bearer $token',
  };

  // Make the GET request with the headers
  try {
    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      // Request successful, handle the response
      print('Enquiry List: ${response.body}');
      var json = jsonDecode(response.body);
      return EnquiryList.fromJson(json);
    } else {
      // Request failed, handle the error
      print('Error: ${response.statusCode} - ${response.body}');
      return EnquiryList.fromJson({});
    }
  } catch (e) {
    // Exception occurred during the request
    print('Error occurred: $e');
    return EnquiryList.fromJson({});
  }
}
