import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydiary/Screens/Home/Profile.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    width: screenWidth,
                    height: 200,
                      color: Colors.pink,
                    //),

                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.07,right:screenWidth*0.02),
                          child: Container(
                            alignment: Alignment.topRight,
                            child:  GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Profile()),);
                              },
                              child:Icon(Icons.cancel,color: Colors.white,),

                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight*0.015,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              iconColor: Colors.white,
                              hintText: 'Search',
                              suffixIcon: Icon(Icons.search,color: Colors.white,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),


                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
                   Container(
                    width: screenWidth,
                    decoration: BoxDecoration
                      (
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50), // Adjust as needed
                        topRight: Radius.circular(50), // Adjust as needed
                      ),
                      color: Colors.white,
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: screenHeight * 0.07,right:screenWidth*0.02),
                          child: Column(
                            children: [
                              Text("search kare"),
                              Container(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.cancel,color: Colors.white,),
                              ),
                            ],
                          ),),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),

                  ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
