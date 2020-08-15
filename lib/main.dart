import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signal_flutter_v2/screens/home_screen.dart';
import 'package:signal_flutter_v2/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signal',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme:
              GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
        "/homescreen": (context) => HomeScreen()
      },
    );
  }
}
