import 'package:firebase_login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IELTS Speaking',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey),
          labelStyle: TextStyle(color: Colors.grey),
        ),
        snackBarTheme: const SnackBarThemeData(
          actionTextColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData.dark(), // standard dark theme
      themeMode: ThemeMode.system,
      // theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}
