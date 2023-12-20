// ignore_for_file: file_names

import 'package:ecommerce/screens/auth-ui/sign-up-screen.dart';
import 'package:ecommerce/utils/app-contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const SignInScreen());
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  @override
  State<SignInScreen> createState() => _SignInScreenState();
  // This widget is the root of your application.
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appScendoryColor,
          title: const Text('Sign In ',
              style: TextStyle(color: AppConstant.appTextColor)),
        ),
        body: Column(
          children: [
            isKeyboardVisible
                ? const Text("Welcome to my app")
                : Column(
                    children: [
                      Lottie.asset('assets/images/splash-icon.json'),
                    ],
                  ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appScendoryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    contentPadding: const EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appScendoryColor,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    contentPadding: const EdgeInsets.only(top: 2.0, left: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              alignment: Alignment.centerRight,
              child: const Text(
                "Forget Password?",
                style: TextStyle(
                    color: AppConstant.appScendoryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: AppConstant.appScendoryColor,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextButton(
                    child: const Text(
                      'sign in',
                      style: TextStyle(color: AppConstant.appTextColor),
                    ),
                    onPressed: () {}),
              ),
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: AppConstant.appScendoryColor),
                ),
                 //Pour naviger a SignInScreen
                GestureDetector(
                  onTap: () => Get.offAll(() => const SignUpScreen()),
                  child: const Text(
                    "Sign Up?",
                    style: TextStyle(
                        color: AppConstant.appScendoryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
