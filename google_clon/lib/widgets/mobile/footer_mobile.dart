import 'package:flutter/material.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              "About",
              style: TextStyle(color: Colors.grey),
            )),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Advertising",
              style: TextStyle(color: Colors.grey),
            )),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Buisness",
              style: TextStyle(color: Colors.grey),
            )),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {},
            child: const Text(
              "How Google Search Works?",
              style: TextStyle(color: Colors.grey),
            )),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Privacy",
              style: TextStyle(color: Colors.grey),
            )),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Terms",
              style: TextStyle(color: Colors.grey),
            )),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Settings",
              style: TextStyle(color: Colors.grey),
            )),
        const SizedBox(height: 10)
      ],
    );
  }
}
