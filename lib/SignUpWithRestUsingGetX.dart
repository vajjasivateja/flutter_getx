import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'SignUpWithRestController.dart';

class SignUpWithRestUsingGetX extends StatefulWidget {
  const SignUpWithRestUsingGetX({Key? key}) : super(key: key);

  @override
  State<SignUpWithRestUsingGetX> createState() => _SignUpWithRestUsingGetXState();
}

class _SignUpWithRestUsingGetXState extends State<SignUpWithRestUsingGetX> {
  SignUpWithRestController controller = Get.put(SignUpWithRestController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: controller.passwordController.value,
              obscureText: true,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "Password", suffixIcon: Icon(Icons.remove_red_eye_sharp)),
            ),
            const SizedBox(height: 40),
            Obx(() => InkWell(
                  onTap: () {
                    controller.signUpApi();
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: controller.isLoading.value ? CircularProgressIndicator(color: Colors.white,) : Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
