import 'package:flutter/material.dart';
import 'package:google_clon/colors.dart';

class SearchTabWords extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String title;
  const SearchTabWords(
      {super.key,
      required this.icon,
      this.isActive = false,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: isActive == true ? blueColor : Colors.grey,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: isActive == true ? blueColor : Colors.grey,
                  fontSize: 15),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        isActive == true
            ? Container(
                width: 50,
                height: 3,
                color: blueColor,
              )
            : Container(),
      ],
    );
  }
}
