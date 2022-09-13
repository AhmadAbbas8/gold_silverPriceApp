import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'home_Screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.grey[500]!,
        nextScreen: const HomeScreen(),
        splashIconSize: 300,
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: const Duration(seconds: 1),
        splash: Column(
          children: [
            Image.asset('assets/gold.png' , scale: 3,),
            const SizedBox(height: 30),
            const Text('Gold & Silver Price'
            ,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
