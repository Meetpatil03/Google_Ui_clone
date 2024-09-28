import 'package:flutter/material.dart';


class FooterWords extends StatelessWidget {
  final String title;
  const FooterWords({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(color: Colors.grey, fontSize: 15),
      ),
    );
  }
}
