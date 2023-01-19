import 'dart:convert';

import 'package:http/http.dart' as http;

import 'constants.dart';

class FormService {
  Future<List<dynamic>> getFormData() async {
    var formResponse = await http.get(
      Uri.parse(formUrl),
      headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      },
    );

    return jsonDecode(formResponse.body)["fields"];
  }
}
