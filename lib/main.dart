import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_whatsapp_fb/common/routes/routes.dart';
import 'package:flutter_whatsapp_fb/common/theme/dark_theme.dart';
import 'package:flutter_whatsapp_fb/common/theme/light_theme.dart';
import 'package:flutter_whatsapp_fb/pages/auth/controller/auth_controller.dart';
import 'package:flutter_whatsapp_fb/pages/home_page.dart';
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
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      // home: const WelcomePage(),
      home: ref.watch(userInfoAuthProvider).when(
        data: (user) {
          if (user == null) {
            return const WelcomePage();
          } else {
            return const HomePage();
          }
        },
        error: (error, trace) {
          print('Error-> $error');
          // return const Scaffold(
          //   body: Center(
          //     child: Text('Something went wrong!'),
          //   ),
          // );
          return const WelcomePage();
        },
        loading: () {
          return const SizedBox();
          // return Scaffold(
          //   body: Center(
          //     child: Image.asset(
          //       ThemeMode.light == true
          //           ? 'assets/images/whatsapp_splash_dark.png'
          //           : 'assets/images/whatsapp_splash_light.png',
          //     ),
          //   ),
          // );
        },
      ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
