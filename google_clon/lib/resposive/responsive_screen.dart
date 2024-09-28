import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveScreen(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 768) {
          // mobile Screen
          return mobileScreenLayout;
        } else {
          // web Screen
          return webScreenLayout;
        }
      },
    );
  }
}
