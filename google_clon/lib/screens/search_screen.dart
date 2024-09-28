import 'package:flutter/material.dart';
import 'package:google_clon/colors.dart';
import 'package:google_clon/services/api_services.dart';

import 'package:google_clon/widgets/footer_display.dart';
import 'package:google_clon/widgets/search_header.dart';
import 'package:google_clon/widgets/search_result_component.dart';
import 'package:google_clon/widgets/tabs_button.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // web Header
          const SearchHeader(),
          SizedBox(
            height: size.height * 0.025,
          ),
          // tabs for news, images etc
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: EdgeInsets.only(left: size.width <= 768 ? 20 : 160),
                child: const TabWords()),
          ),
          const Divider(
            thickness: 0.1,
            color: Colors.grey,
          ),
          // search Result
          FutureBuilder(
              future:
                  ApiServie().fetchData(queryTerm: searchQuery, start: start),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: size.width <= 768 ? 20 : 160, top: 12),
                        child: Text(
                          "About ${snapshot.data['searchInformation']['formattedTotalResults'].toString()} results (${snapshot.data['searchInformation']['formattedSearchTime'].toString()} seconds)",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width <= 768 ? 20 : 160, top: 20),
                        child: ListView.builder(
                            itemCount: snapshot.data?['items'].length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return SearchResultComponent(
                                  desc: snapshot.data?['items'][index]
                                      ['snippet'],
                                  link: snapshot.data?['items'][index]['link'],
                                  text: snapshot.data?['items'][index]['title'],
                                  linkToGo: snapshot.data?['items'][index]
                                      ['formattedUrl']);
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                if (start != '0') {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SearchScreen(
                                          searchQuery: searchQuery,
                                          start: (int.parse(start) - 5)
                                              .toString())));
                                }
                              },
                              child: const Text(
                                "< Prev",
                                style:
                                    TextStyle(color: blueColor, fontSize: 15),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: ((context) => SearchScreen(
                                        searchQuery: searchQuery,
                                        start: (int.parse(start) + 5)
                                            .toString()))));
                              },
                              child: const Text(
                                "Next >",
                                style:
                                    TextStyle(color: blueColor, fontSize: 15),
                              )),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 50,
                        color: footerColor,
                        child: const FooterSearch(),
                      )
                    ],
                  );
                } else {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: size.height * 0.4),
                      child: const CircularProgressIndicator(),
                    ),
                  );
                }
              }),
          // pagination
        ],
      )),
    );
  }
}
