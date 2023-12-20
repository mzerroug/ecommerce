// ignore_for_file: file_names

import 'package:ecommerce/utils/app-contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppConstant.appScendoryColor,
            statusBarIconBrightness: Brightness.light),
        title: const Text('E-Commerce App'),
        backgroundColor: AppConstant.appMainColor,
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Main Screen'),
      ),
    );
  }
}
