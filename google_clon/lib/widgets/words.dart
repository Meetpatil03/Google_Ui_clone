import 'package:flutter/material.dart';
import 'package:google_clon/colors.dart';

class TranslatedWords extends StatelessWidget {
  final String title;
  const TranslatedWords({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      
        child: Text(
          title,
          softWrap: true,
          style: const TextStyle(color: blueColor),
        ),
      
    );
  }
}
