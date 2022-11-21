import 'package:flutter/material.dart';
import 'package:splashscreen/Nested_navbar/nav_bar.dart';


void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
