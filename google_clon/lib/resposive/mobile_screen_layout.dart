import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clon/colors.dart';
import 'package:google_clon/widgets/display_search_google.dart';

import 'package:google_clon/widgets/languages_row.dart';
import 'package:google_clon/widgets/mobile/footer_mobile.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: size.width * 0.5,
            child: const DefaultTabController(
              length: 2,
              child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: blueColor,
                  labelColor: blueColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                        child: Text(
                      "All",
                      style: TextStyle(fontSize: 16),
                    )),
                    Tab(child: Text("Images", style: TextStyle(fontSize: 16))),
                  ]),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.white,
            iconSize: 20,
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: Colors.white,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Sign in"))),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // google Display Search Screen

              Padding(
                padding: EdgeInsets.only(top: size.height * 0.15),
                child: Column(
                  children: [
                    const DisplayGoogle(),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const LanguageDisplay(),
                    SizedBox(
                      height: size.height * 0.32,
                    ),
                  ],
                ),
              ),

              // display bottom Bar
              const Column(
                children: [
                  FooterMobile(),
                ],
              ),
            ]),
      ),
    );
  }
}
