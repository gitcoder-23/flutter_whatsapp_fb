import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/common/theme/dark_theme.dart';
import 'package:flutter_whatsapp_fb/common/theme/light_theme.dart';
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
      // theme: ThemeData.dark(),
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
    );
  }
}
