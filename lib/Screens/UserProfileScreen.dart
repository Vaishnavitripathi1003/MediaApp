import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydiary/Screens/DashBorad/dashboard.dart';
import 'package:mydiary/Screens/Home/OtpReadScreen.dart';

import 'Home/Search.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
   TextEditingController textEditingContoller=new TextEditingController();
   bool isMobileValid = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    var containerColor = isMobileValid ? Colors.green : Colors.black26;
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.pink,
      ),*/
      body: Stack(
        children: [
          Container(
            color: Colors.lightBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    width: screenWidth,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: screenHeight * 0.07,
                              right: screenWidth * 0.03),
                          child: Container(
                            alignment: Alignment.topRight,
                            child:GestureDetector(
                              child:    RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Skip ",
                                        style: TextStyle(fontSize: 15)),
                                    WidgetSpan(
                                      child: Icon(
                                        Icons
                                            .keyboard_double_arrow_right_outlined,
                                        size: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Dashboard()),);
                              },
                            )


                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [


                            CircleAvatar(
                                radius: 50, // Adjust the radius as needed
                                backgroundImage: AssetImage("images/newlogo.jpeg"),  ),

                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Welcome!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 25),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Please login to move ahead",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.3),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), // Adjust as needed
                  topLeft: Radius.circular(30), // Adjust as needed
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.1,
                        left: screenWidth * 0.05,
                        right: screenWidth * 0.05),
                    child: TextField(
                      controller:textEditingContoller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        // Border from all sides
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(color: Colors.black26),
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: change,// Only numbers can be entered
                    ),
                  ),

                     Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.02,
                          left: screenWidth * 0.05,
                          right: screenWidth * 0.05),
                      child: Container(
                        height: screenHeight * 0.05,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: containerColor,
                                width: 2,
                                style: BorderStyle.solid,
                                strokeAlign: BorderSide.strokeAlignOutside),color: containerColor),   // Border from all sides)

                        child:

                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("OTP",style: TextStyle(
                                  fontSize: 20
                              ),
                                textAlign: TextAlign.center,),
                            ],
                          ) ,
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => OtpReadScreen()),
                            );
                          },
                        )

                      ),

                  ),
                 Padding(
                   padding:  EdgeInsets.only(top: screenHeight*0.03),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         width: screenWidth * 0.4,
                         child: Divider(
                           color: Colors.black12, // Set the color of the Divider
                           thickness: 2, // Set the thickness of the Divider
                           indent: 5, // Set the indent (space at the start of the Divider)
                           endIndent: 5, // Set the endIndent (space at the end of the Divider)
                         ),
                       ),
                       Text("OR"),// Add some space between the Dividers
                       Container(
                         width: screenWidth * 0.4,
                         child: Divider(
                           color: Colors.black12,  // Set the color of the Divider
                           thickness: 2, // Set the thickness of the Divider
                           indent: 5, // Set the indent (space at the start of the Divider)
                           endIndent: 5, // Set the endIndent (space at the end of the Divider)
                         ),
                       ),
                     ],
                   ),
                 ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.01,
                      left: screenWidth * 0.05,
                      right: screenWidth * 0.05),
                    child: Container(
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.black26,
                              width: 2,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignOutside)),   // Border from all sides)

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.g_mobiledata_rounded,color: Colors.pinkAccent,size: 40,),
                            Text("Sign in with Google",style: TextStyle(
                              fontSize: 20
                            ),)
                          ]
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

  void change(String value) {
    if(textEditingContoller.text.isEmpty || textEditingContoller.text.length<10)
    {

      setState(() {
        isMobileValid = false;
      });
    }
    else
      {
        setState(() {
          isMobileValid = true;

        });
      }
      }
  }

