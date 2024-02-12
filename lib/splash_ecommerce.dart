import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:splash_ecommerce/Samplepage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  void splashScreenMethod() {
    Timer(
      const Duration(seconds: 7),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) {
              return samplepage();
            },
          ),
        );
      },
    );
  }

  @override
  void initState() {
    splashScreenMethod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 270,
          ),
          Column(
            children: [
              Center(
                child: Container(
                  height: 350,
                  width: 350,
                  child: Column(
                    children: [
                      Image.asset('asset/shop.png'),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'SHOPIFY',
                            textStyle: const TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                            speed: const Duration(milliseconds: 600),
                          ),
                        ],
                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 600),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
