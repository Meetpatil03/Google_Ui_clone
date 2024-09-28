import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clon/colors.dart';
import 'package:google_clon/widgets/footer_bottom_display.dart';
import 'package:google_clon/widgets/languages_row.dart';
import 'package:google_clon/widgets/web/buttons.dart';
import 'package:google_clon/widgets/display_search_google.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar:
            AppBar(backgroundColor: backgroundColor, elevation: 0, actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Gmail",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Images",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              )),
          const SizedBox(height: 10),
          IconButton(
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                color: Colors.white,
              ),
              onPressed: () {}),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Sign in"),
            ),
          )
        ]),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.15),
              child: Column(
                children: [
                  // Google display with Search box
                  const DisplayGoogle(),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  // google Search Button & I am Feeling like wala button
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Buttons(
                        title: "Google Search",
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Buttons(title: "I'm Feeling Lucky"),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // languages wala part
                  const LanguageDisplay(),
                ],
              ),
            ),

            // bottom wala part
            const FooterBar(),
          ],
        ));
  }
}
