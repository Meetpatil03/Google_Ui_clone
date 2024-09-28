import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clon/screens/search_screen.dart';

class DisplayGoogle extends StatelessWidget {
  const DisplayGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          'assets/images/google-logo.png',
          height: 120,
          width: 270,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  size.width <= 768 ? size.width * 0.09 : size.width * 0.25),
          child: TextFormField(
            onFieldSubmitted: (query) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SearchScreen(
                        searchQuery: query,
                        start: '0',
                      )));
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(7.0),
                child: SvgPicture.asset(
                  'assets/images/search-icon.svg',
                  color: Colors.white,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(7.0),
                child: SvgPicture.asset('assets/images/mic-icon.svg'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
