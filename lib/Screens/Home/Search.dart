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
            color: Colors.pink,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child:   Container(
                    width: screenWidth,
                    height: screenHeight*0.25,
                    color: Colors.pink,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.07, right: screenWidth * 0.02),
                          child: Container(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Dashboard()),
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
                          padding: EdgeInsets.only(top: screenHeight*0.03,left: screenWidth*0.06,right:screenWidth*0.06 ),
                          child: Container(
                            height: screenHeight*0.06,
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), // Adjust as needed
                  topLeft: Radius.circular(30), // Adjust as needed
                ),
                color: Colors.white,
              ),
              child:

              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:Column(
                  children: [
                    Container(
                      height: screenHeight*0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30), // Adjust as needed
                          topLeft: Radius.circular(30), // Adjust as needed
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Divider(
                      color: Colors.black12,
                      thickness: 6,
                    ),
                    Container(
                      height: screenHeight*0.15,
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
                            padding:  EdgeInsets.only(left: 8),
                            child: Container(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(child: Padding(
                                      padding: EdgeInsets.only(right: 10), // Adjust the spacing here
                                      child: Icon(Icons.group, color: Colors.pink),
                                    ),),
                                    TextSpan(text: 'Your Favourite Author',style: TextStyle(
                                        color: Colors.pink
                                    )),
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
                                    return Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
                                          radius: 40,
                                        ),
                                        Text("Person$index"),
                                      ],
                                    );
                                  },
                                ),
                              ),


                          /*ListView.builder(
                            itemCount: imageslst.length,
                            itemBuilder: (context, index) {
                              // Here we return a custom list item widget for each item in the list
                              return Column(
                                children: [
                                Image.network(
                                  imageslst[index],
                                ),
                                  Text(tabTitles[index])
                                ],

                                // Pass image asset path or URL here
                              );
                            },
                          ),*/

                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black12,
                      thickness: 6,
                    ),
                    Container(
                      height: screenHeight*0.5,
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
                            padding:  EdgeInsets.only(left: 8),
                            child: Container(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(child: Padding(
                                      padding: EdgeInsets.only(right: 10), // Adjust the spacing here
                                      child: Icon(Icons.video_call_sharp, color: Colors.pink),
                                    ),),
                                    TextSpan(text: 'Top Episode',style: TextStyle(
                                        color: Colors.pink
                                    )),
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
                                return
                                  Container(
                                    height:screenHeight*0.5 ,
                                    child: Card(
                                      color: Colors.black12,
                                      child:  Column(
                                        children: [
                                          Image.asset("images/imagesss.jpg"),
                                          Text("Person$index"),
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
                    Divider(
                      color: Colors.black12,
                      thickness: 6,
                    ),
                    Container(
                      height: screenHeight*0.31,
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
                            padding:  EdgeInsets.only(left: 8),
                            child: Container(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    WidgetSpan(child: Padding(
                                      padding: EdgeInsets.only(right: 10), // Adjust the spacing here
                                      child: Icon(Icons.video_call_sharp, color: Colors.pink),
                                    ),),
                                    TextSpan(text: 'News',style: TextStyle(
                                        color: Colors.pink
                                    )),
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
                                return
                                  Container(
                                    child: Card(
                                      color: Colors.black12,
                                      child:  Column(
                                        children: [
                                          Image.asset("images/dummyimages.jpg"),
                                          //Image.network("https://www.pexels.com/photo/green-and-blue-peacock-feather-674010/",),
                                          Text("Person$index"),
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
                  ],

                ),
              ),




              /*Padding(
                padding: EdgeInsets.only(top: screenHeight*0.006,left: screenWidth*0.04,right: screenWidth*0.04),
                child: Container(
                  child: Container(
                    child: GridView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding:EdgeInsets.only(top: 30),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio:0.75,
                      ),
                      // return a custom ItemCard
                      itemBuilder: (context, i) => Container(child: Text(tabTitles[i],style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                        color: Colors.blueGrey,
                        alignment: Alignment.center,
                        height: screenHeight*0.7,
                      ),
                      itemCount: tabTitles.length,
                    ),
                  ),),
              )*/
            ),
          )
        ],
      ),
    );
  }
}
