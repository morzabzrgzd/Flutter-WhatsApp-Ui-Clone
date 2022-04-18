import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/pages/welcome/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Whatsapp Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // getPages: [
      //   GetPage(name: '/welcome', page: ()=> const WelcomePage(), transition: Transition.cupertino),
      //   GetPage(name: '/phone', page: ()=> const PhonePage(), transition: Transition.cupertino),
      // ],
      home: const WelcomePage(),
    );
  }
}
