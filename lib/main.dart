import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Whatsapp Clone',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: ThemeData.dark(),
      home: const WelcomePage(),
    );
  }
}
