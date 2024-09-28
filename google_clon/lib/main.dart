import 'package:flutter/material.dart';
import 'package:google_clon/colors.dart';
import 'package:google_clon/resposive/mobile_screen_layout.dart';
import 'package:google_clon/resposive/responsive_screen.dart';
import 'package:google_clon/resposive/web_screen_layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Clone',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),

     
    );
  }
}
