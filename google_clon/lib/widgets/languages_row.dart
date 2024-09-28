import 'package:flutter/material.dart';
import 'package:google_clon/widgets/words.dart';

class LanguageDisplay extends StatelessWidget {
  const LanguageDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text(
          "Google offered in:",
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(
          width: 5,
        ),
        TranslatedWords(
          title: 'हिंदी',
        ),
        SizedBox(
          width: 5,
        ),
        TranslatedWords(
          title: 'ಕನ್ನಡ',
        ),
        SizedBox(
          width: 5,
        ),
        TranslatedWords(title: 'ગુજરાતી'),
        SizedBox(
          width: 5,
        ),
        TranslatedWords(
          title: 'मराठी',
        ),
        SizedBox(
          width: 5,
        ),
        TranslatedWords(
          title: 'മലയാളം',
        ),
        SizedBox(
          width: 5,
        ),
        TranslatedWords(
          title: 'తెలుగు',
        ),
        SizedBox(
          width: 5,
        ),
        TranslatedWords(
          title: 'தமிழ்',
        ),
        SizedBox(
          width: 5,
        ),
        TranslatedWords(
          title: 'বাঙালি',
        ),
      ],
    );
  }
}
