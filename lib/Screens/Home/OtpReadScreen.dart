import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../DashBorad/dashboard.dart';

class OtpReadScreen extends StatefulWidget {
  const OtpReadScreen({Key? key}) : super(key: key);

  @override
  State<OtpReadScreen> createState() => _OtpReadScreenState();
}

class _OtpReadScreenState extends State<OtpReadScreen> {
  late TextEditingController op1;
  late TextEditingController op2;
  late TextEditingController op3;
  late TextEditingController op4;

  late FocusNode op1FocusNode;
  late FocusNode op2FocusNode;
  late FocusNode op3FocusNode;
  late FocusNode op4FocusNode;

  @override
  void initState() {
    super.initState();
    op1 = TextEditingController();
    op2 = TextEditingController();
    op3 = TextEditingController();
    op4 = TextEditingController();

    op1FocusNode = FocusNode();
    op2FocusNode = FocusNode();
    op3FocusNode = FocusNode();
    op4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    op1.dispose();
    op2.dispose();
    op3.dispose();
    op4.dispose();

    op1FocusNode.dispose();
    op2FocusNode.dispose();
    op3FocusNode.dispose();
    op4FocusNode.dispose();
    super.dispose();
  }

  void _moveToNextField(String value, FocusNode currentNode, FocusNode nextNode) {
    if (value.length == 1) {
      currentNode.unfocus();
      nextNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return WillPopScope(child:  Scaffold(
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
                            right: screenWidth * 0.03,
                          ),
                          child: Container(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Skip ",
                                      style: TextStyle(fontSize: 15),
                                    ),
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dashboard(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                              AssetImage("images/newlogo.jpeg"),
                            ),
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
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Please login to move ahead",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
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
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        width: 70,
                        child: TextField(
                          controller: op1,
                          focusNode: op1FocusNode,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) =>
                              _moveToNextField(value, op1FocusNode, op2FocusNode),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        width: 70,
                        child: TextField(
                          controller: op2,
                          focusNode: op2FocusNode,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) =>
                              _moveToNextField(value, op2FocusNode, op3FocusNode),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        width: 70,
                        child: TextField(
                          controller: op3,
                          focusNode: op3FocusNode,

                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) =>
                              _moveToNextField(value, op3FocusNode, op4FocusNode),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5),
                        width: 70,
                        child: TextField(
                          controller: op4,
                          focusNode: op4FocusNode,

                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            if (value.length == 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Dashboard()),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ), onWillPop: ()async{
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
      return false;
    });


  }
}
