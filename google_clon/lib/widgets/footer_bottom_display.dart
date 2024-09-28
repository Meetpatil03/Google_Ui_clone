import 'package:flutter/material.dart';
import 'package:google_clon/colors.dart';
import 'package:google_clon/widgets/footer_words.dart';

class FooterBar extends StatelessWidget {
  const FooterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // show adds wala part
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                FooterWords(title: "About"),
                SizedBox(width: 10),
                FooterWords(title: "Advertisement"),
                SizedBox(width: 10),
                FooterWords(title: "Business"),
                SizedBox(width: 10),
                FooterWords(title: "How Search Works"),
              ],
            ),

            // privacy wala part
            Row(
              children: [
                FooterWords(title: 'Privacy'),
                SizedBox(width: 10),
                FooterWords(title: 'Terms'),
                SizedBox(width: 10),
                FooterWords(title: 'Settings'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
