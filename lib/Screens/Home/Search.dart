import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydiary/Screens/DashBorad/dashboard.dart';
import 'package:mydiary/Screens/Home/Profile.dart';

class Search extends StatefulWidget {
  const Search({Key? key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<String> tabTitles = [
    "# Home",
    "# Latest",
    "# News",
    "# Elections",
    "# Sports",
    "# entertainment",
    "# Technology",
    "# Ordinary",
    "# business"
  ];
  final List<String> imageslst = [
    "https://www.pexels.com/photo/composition-of-different-conchs-on-beige-table-4226881/",
    "https://www.pexels.com/photo/woman-talking-video-1426044/",
    "https://www.pexels.com/photo/person-holding-microphone-33779/",
    "https://www.pexels.com/photo/man-reading-a-newspaper-902194/",
    "https://www.pexels.com/photo/turned-on-macbook-air-on-white-and-gray-surface-209726/",
    "https://www.pexels.com/photo/retro-plastic-bobbin-with-film-3921000/",
    "https://www.pexels.com/photo/composition-of-different-conchs-on-beige-table-4226881/",
    "https://www.pexels.com/photo/woman-talking-video-1426044/",
    "https://www.pexels.com/photo/person-holding-microphone-33779/",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    width: screenWidth,
                    height: screenHeight * 0.25,
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenHeight * 0.07,
                              right: screenWidth * 0.02),
                          child: Container(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()),
                                );
                              },
                              child: Icon(
                                Icons.cancel,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.015,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenHeight * 0.03,
                              left: screenWidth * 0.06,
                              right: screenWidth * 0.06),
                          child: Container(
                            height: screenHeight * 0.06,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.white),
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.25),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), // Adjust as needed
                  topLeft: Radius.circular(30), // Adjust as needed
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 5),
                    height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30), // Adjust as needed
                        topLeft: Radius.circular(30), // Adjust as needed
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8, top: 10),
                          child: Container(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      // Adjust the spacing here
                                      child:
                                          Icon(Icons.group, color: Colors.pink),
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'Your Favourite Author',
                                      style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16)),
                                ],
                              ),
                            ),
                            width: double.infinity,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: imageslst.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.only(top: 5,left: 5),
                                child: Column(

                                  children: [
                                    CircleAvatar(
                                backgroundImage: AssetImage("images/newlogo.jpeg"),

                              radius: 40,
                                    ),
                                    Text("Person$index"),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black12,
                    thickness: 6,
                  ),
                  Expanded(
                    child: Container(
                      height: screenHeight * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30), // Adjust as needed
                          topLeft: Radius.circular(30), // Adjust as needed
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(padding: EdgeInsets.all(10),child: Text.rich(
                                    TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            // Adjust the spacing here
                                            child: Icon(CupertinoIcons.t_bubble,
                                                color: Colors.pink),
                                          ),
                                        ),
                                        TextSpan(
                                            text: 'Top Poetries',
                                            style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 16)),
                                      ],
                                    ),
                                  ),
                                  width: double.infinity,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: double.infinity,
                                  child: Card(
                                    color: Colors.black12,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset("images/imagesss.jpg"),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
