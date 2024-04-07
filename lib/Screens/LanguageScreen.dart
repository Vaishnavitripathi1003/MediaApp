import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydiary/Screens/UserProfileScreen.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<String> tabtitle = [
    "Home",
    "Latest",
    "News",
    "Elections",
    "Sports",
    "Entertainment",
    "Technology",
    "Business"
  ];

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.2,
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.05),
              child: Container(
                child: Text(
                  "Choose your language for menu",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            /* Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.15,
                  left: screenWidth * 0.1,
                  right: screenWidth * 0.1),
              child: GestureDetector(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black26,
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignOutside)),
                  child: Text(
                    "Hindi",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfile()),);
                },
              ),
            ),*/
            Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.15,
                    left: screenWidth * 0.1,
                    right: screenWidth * 0.1),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: screenHeight * 0.04,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: Colors.black26,
                            width: 2,
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside),
                      ),
                      // Border from all sides)

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "हिंदी",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.1,
                    right: screenWidth * 0.1),
                child: GestureDetector(
                  child: Container(
                      height: screenHeight * 0.04,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: Colors.black26,
                            width: 2,
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside),
                      ),
                      // Border from all sides)

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "English",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                  },
                )),
          ],
        ),
        Align(
          child: Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.02),
            child: Container(
              child: Text(
                "You can change your menu language ",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          alignment: Alignment.bottomCenter,
        ),
      ],
    ));
  }
}
