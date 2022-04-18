import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/helpers/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 55),
            Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                fontSize: size.width * 0.093,
                color: kPrimeryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Image.asset('assets/images/whatsapp.jpg'),
            const Spacer(),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                    color: Colors.grey.shade600, fontSize: size.width * 0.027),
                children: [
                  const TextSpan(text: 'Read our '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: const TextStyle(
                      color: Color(0xff50a0c2),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        log('Privacy Policy');
                      },
                  ),
                  const TextSpan(text: '. '),
                  const TextSpan(
                      text: 'Tap "Agree and continue" to accept the\n'),
                  TextSpan(
                    text: 'Terms of Service',
                    style:
                        const TextStyle(color: Color(0xff50a0c2), height: 1.5),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        log('Terms of service');
                      },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 42,
              margin: const EdgeInsets.symmetric(horizontal: 55),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimeryColor,
                  elevation: 0,
                ),
                onPressed: () {
                  // Get.toNamed('/phone');
                },
                child: const Text('AGREE AND CONTINUE'),
              ),
            ),
            const SizedBox(height: 65)
          ],
        ),
      ),
    );
  }
}
