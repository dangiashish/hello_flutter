import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_flutter/pages/home_page.dart';
import 'package:hello_flutter/pages/login_page.dart';
import 'package:hello_flutter/pages/main.dart';
import 'package:hello_flutter/pages/user_profile.dart';
import 'package:hello_flutter/utils/Routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:  const UserProfile(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.poppins().fontFamily,
          useMaterial3: true),
      initialRoute: "/",
      routes: {
        // "/": (context) => const LoginPage(),
        "/": (context) => const MyApp(),
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.profile: (context) => const UserProfile(),
        MyRoutes.login: (context) => const LoginPage()
      },
    );
  }
}
