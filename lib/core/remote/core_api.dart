import 'dart:convert';

import 'package:app/app/model/remote/base_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CoreAPI {
  Client client = Client();

  Future<BaseResponseAPI> get(
      {@required dynamic baseUrl,
      String endpoint,
      Map<String, dynamic> headers}) async {
    final response = await client.get(
        endpoint != null ? baseUrl + endpoint : baseUrl,
        headers: headers ?? {});
    var json = jsonDecode(utf8.decode(response.bodyBytes));
    print(json);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return BaseResponseAPI(
          statusCode: response.statusCode,
          statusMessage: json.toString(),
          response: json);
    } else {
      print("${response.statusCode}, ${json['message']}");
      return BaseResponseAPI(
          statusCode: response.statusCode,
          response: json.toString(),
          statusMessage: "Error");
    }
  }

  Future<BaseResponseAPI> post(
      {@required String baseUrl,
      dynamic body,
      String endpoint,
      Map<String, dynamic> headers}) async {
    print("----------ENDPOINT---------");
    print(endpoint != null ? baseUrl + endpoint : baseUrl);
    var jsonBody = jsonEncode(body);
    print("----------BODY-------------");
    print(jsonBody);
    print("----------RESPONSE---------");
    final response = await client.post(
        endpoint != null ? baseUrl + endpoint : baseUrl,
        body: jsonBody,
        headers: headers ?? {"Content-Type": "application/json"});
    var json;
    print(response.body);
    print("---------------------------");
    if (response.body != null && response.body.isNotEmpty) {
      json = jsonDecode(utf8.decode(response.bodyBytes));
    }

    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return BaseResponseAPI(
          statusCode: response.statusCode,
          statusMessage: json.toString(),
          response: json);
    } else {
      return BaseResponseAPI(
          statusCode: response.statusCode,
          response: json,
          statusMessage: "Error");
    }
  }

  Future<BaseResponseAPI> put(
      {@required String baseUrl,
      String endpoint,
      dynamic body,
      Map<String, dynamic> headers}) async {
    var jsonBody = jsonEncode(body);
    final response = await client.put(
        endpoint != null ? baseUrl + endpoint : baseUrl,
        body: jsonBody,
        headers: headers ?? {});
    var json = jsonDecode(utf8.decode(response.bodyBytes));

    if (response.statusCode >= 200 && response.statusCode <= 299) {
      return BaseResponseAPI(
          statusCode: response.statusCode,
          statusMessage: json.toString(),
          response: json);
    } else {
      print("${response.statusCode}, ${json['message']}");
      return BaseResponseAPI(
          statusCode: response.statusCode,
          response: json.toString(),
          statusMessage: "Error");
    }
  }
}
