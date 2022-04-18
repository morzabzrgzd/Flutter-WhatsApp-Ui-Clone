import 'package:flutter/material.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){}, child: Text('data')),),
    );
  }
}