import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
     /* appBar: AppBar(
        backgroundColor: Colors.pink,
      ),*/
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    width: screenWidth,
                    height: 300,

                    decoration: BoxDecoration
                      (
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30), // Adjust as needed
                        bottomRight: Radius.circular(30), // Adjust as needed
                      ),
                      color: Colors.pink,
                    ),

                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: screenHeight * 0.07,right:screenWidth*0.02),
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.cancel,color: Colors.white,),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.person
                              ),
                            ),
                          ),
                          Text("Login",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.pinkAccent,
                                      child: Icon(
                                        Icons.tag,color: Colors.white,
                                      ),
                                    ),
                                    Text("Hashtag",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),),
                                  ],
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.pinkAccent,
                                      child: Icon(
                                          Icons.notifications_none_outlined,color: Colors.white,
                                      ),
                                    ),
                                    Text("Notification Hub",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),),
                                  ],
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.pinkAccent,
                                      child: Icon(
                                          Icons.bookmark_border,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text("Bookmark",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                  ),
                ),
                Padding(
                 padding: EdgeInsets.only(top: screenHeight * 0.04,left:screenWidth*0.02),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:Colors.pinkAccent
                          ,child: Icon(
                              Icons.circle_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("Change Language",style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15
                        ),),
                        SizedBox(width: 20,),
                       TextButton(onPressed: (){}, child:   Container(
                         /*decoration: BoxDecoration(
                           border: Border.all(color: Colors.pinkAccent,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),
                           borderRadius: BorderRadius.all(Radius.circular(5))
                         ),*/
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Hindi",style: TextStyle(
                               color: Colors.black54
                           ),),
                         ),
                       )),
                        TextButton(onPressed: (){}, child:   Container(
                         /* decoration: BoxDecoration(
                              border: Border.all(color: Colors.pinkAccent,width: 1,style: BorderStyle.solid,strokeAlign: BorderSide.strokeAlignOutside),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),*/
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("English",style: TextStyle(
                                color: Colors.black54
                            ),),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                Divider(
                  indent:10,
                  endIndent: 10,
                  color: Colors.black12,
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.01,left:screenWidth*0.02,bottom: screenHeight * 0.01),
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:Colors.pinkAccent
                          ,child: Icon(
                          Icons.group_rounded,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(width: 10,),
                        Text("Our Team",style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15
                        ),)
                      ],
                    ),
                  ),
                ),
                Divider(
                  indent:10,
                  endIndent: 10,
                  color: Colors.black12,
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.01,left:screenWidth*0.02,bottom: screenHeight * 0.01),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor:Colors.pinkAccent
                          ,child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        ),
                        SizedBox(width: 10,),
                        Text("Setting",style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15
                        ),)
                      ],
                    ),
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
