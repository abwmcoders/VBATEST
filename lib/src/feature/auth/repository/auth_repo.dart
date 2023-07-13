import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AuthRepository {
  login(String email, String password) async {
    var res = await http.post(
      Uri.parse("http://vbatest.metrdev.com:2472/api/v1/signin"),
      // headers: {
      //   "Content-Type": application/json,
      // },
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
      },
      body: {
        "email": email,
        "password": password,
      },
    ).timeout(
      const Duration(seconds: 60),
    );
    print("before converting value -----> ${res.toString()}");
    print("before converting value -----> ${res.body.toString()}");
    print("Aftererrer");
    final data = jsonDecode(res.body.toString());
    if (kDebugMode) {
      print("Response from api call ====> $data");
    }
    if (data["message"] == "success") {
      return data;
    } else {
      return "An Error occurred while authenticating user";
    }
  }
}
