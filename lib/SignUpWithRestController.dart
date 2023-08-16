import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpWithRestController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool isLoading = false.obs;

  void signUpApi() async {
    try {
      isLoading.value = true;
      var response = await http.post(
        Uri.parse("https://reqres.in/api/login"),
        body: {
          "email": emailController.value.toString(),
          "password": emailController.value.toString(),
        },
      );
      var data = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        isLoading.value = false;
        print("account created successfully");
        print(data);
        Get.snackbar("Login Successful", data["token"]);
      } else {
        isLoading.value = false;
        print("failed ${data["error"]}");
        Get.snackbar("Login Failed", data["error"]);
      }
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
      Get.snackbar("Login Failed", e.toString());
    }
  }
}
