import 'package:flutter/material.dart';
import 'package:task_2/screens/home_Screen.dart';
import 'package:task_2/screens/splash_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/homeScreen': (context) => const HomeScreen(),
      },
    );
  }
}
