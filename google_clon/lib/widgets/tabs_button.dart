import 'package:flutter/material.dart';
import 'package:google_clon/widgets/tab_words.dart';

class TabWords extends StatelessWidget {
  const TabWords({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SearchTabWords(
            title: 'All',
            icon: Icons.search,
            isActive: true,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTabWords(
            title: 'Images',
            icon: Icons.image,
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTabWords(
            title: 'Maps',
            icon: Icons.map,
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTabWords(
            title: 'Shopping',
            icon: Icons.shop,
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTabWords(
            title: 'News',
            icon: Icons.article,
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTabWords(
            title: 'More',
            icon: Icons.more_vert,
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
