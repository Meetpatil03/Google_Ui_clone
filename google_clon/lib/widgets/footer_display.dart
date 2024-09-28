import 'package:flutter/material.dart';
import 'package:google_clon/colors.dart';

class FooterSearch extends StatelessWidget {
  const FooterSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Meet Patil",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          " | ",
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.circle_rounded,
          size: 10,
          color: Colors.grey,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "India,",
          style: TextStyle(color: primaryColor),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Pune",
          style: TextStyle(color: primaryColor),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "412207",
          style: TextStyle(color: primaryColor),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
