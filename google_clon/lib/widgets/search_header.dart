import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clon/colors.dart';
import 'package:google_clon/screens/search_screen.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: Row(
        children: [
          Image.asset(
            'assets/images/google-logo.png',
            height: 45,
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: size.width * 0.45,
            height: 44,
            decoration: BoxDecoration(
              color: searchColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: searchColor),
            ),
            child: TextFormField(
              onFieldSubmitted: (query) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) =>
                        SearchScreen(searchQuery: query, start: '0'))));
              },
              style: const TextStyle(fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                          onTap: () {},
                          child:
                              SvgPicture.asset('assets/images/mic-icon.svg')),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.search,
                        color: blueColor,
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
