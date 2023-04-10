import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_whatsapp_fb/common/routes/routes.dart';
import 'package:flutter_whatsapp_fb/common/theme/dark_theme.dart';
import 'package:flutter_whatsapp_fb/common/theme/light_theme.dart';
import 'package:flutter_whatsapp_fb/pages/welcome_page.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // "Provider Added"
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
  // runApp(const MyApp());
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
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
