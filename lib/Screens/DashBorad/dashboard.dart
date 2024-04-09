import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydiary/Screens/Home/Profile.dart';

import '../Home/Search.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  final List<String> tabTitles = [
    "Home",
    "Latest",
    "Saved",
    "Drafts",
    "Network",
    "notifications",
   /* "Technology",
    "Ordinary",
    "business"*/
  ];
  final List<String> Videos = [
    "https://www.pexels.com/video/wood-sea-landscape-nature-3971351/",
    "https://www.pexels.com/video/writing-a-quote-in-calligraphy-6185611/",
    "https://pexels.com/video/a-person-standing-on-rocks-atop-a-mountain-4763826/",
    "https://www.pexels.com/video/handwritten-activism-quote-6185649/",
    "https://www.pexels.com/video/motivational-handwriting-about-future-6185667/",
    "https://www.pexels.com/video/handwritten-activism-quote-6185649/",
    "https://pexels.com/video/a-person-standing-on-rocks-atop-a-mountain-4763826/",
    "https://www.pexels.com/video/writing-a-quote-in-calligraphy-6185611/",
    "https://www.pexels.com/video/wood-sea-landscape-nature-3971351/",
  ];
  final List<String> text = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.  ",
    "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    "Success is not final; failure is not fatal: It is the courage to continue that counts.",
    "The first step toward success is taken when you refuse to be a captive of the environment in which you first find yourself.",
    "If everyone is moving forward together, then success takes care of itself.",
    "There is a price to pay for success, there is also a price to pay for failure. The question is, what price are you willing to pay?",
    "Always be yourself, express yourself, have faith in yourself, do not go out and look for a successful personality and duplicate it.",
    "A thinker sees his own actions as experiments and questions--as attempts to find out something. Success and failure are for him answers above all."
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
  late TabController _tabcontroller;
  int _currentIndex = 0;

  //late TabController _tabcontroller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(length: tabTitles.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ankahe Alfaz',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      );
                    },
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          bottom: TabBar(
            controller: _tabcontroller,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.yellow,
            tabs: tabTitles.map((title) {
              return Tab(
                text: title,
              );
            }).toList(),
            isScrollable: true,
            onTap: (index) {
              setState(() {
                _tabcontroller.index = index;
              });
            }, // Add TabBar here
          ),
        ),
        body: TabBarView(
          // This is where you define the content for each tab
          children: List.generate(tabTitles.length, (index) {
            if (_tabcontroller.index == 0 && _currentIndex == 0) {
              return methodForView(context);
            }

            if (_currentIndex == 2) {
              return methodForAddPoem(context);
            } else {
              return Container(
                color: Colors.black26,
              );
            }
          }).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.deepOrangeAccent,
          currentIndex: _currentIndex,
          // Current index for bottom navigation
          onTap: (index) {
            setState(() {
              _currentIndex = index; // Update the current index
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.headphones_rounded),
              label: 'Hear',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_sharp),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_circle_fill),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'setting',
            ),
          ],
        ),
      ),
    );
  }

  Widget methodForView(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Expanded(child:  ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageslst.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(top: 5,left: 5),
                child: Column(

                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.bounceInOut,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black12,
                          width: 3.0,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.blue,
                            Colors.white,
                            Colors.orange,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),

                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/newlogo.jpeg"),
                          radius: 40,
                        ),

                    ),
                    Text("Person$index"),
                  ],
                ),
              );
            },
          ),flex: 1,),
       Expanded(child: ListView.builder(
         scrollDirection: Axis.vertical,
         itemCount: 5,
         itemBuilder: (context, index) {
           return Container(
             width: double.infinity,
             child: Card(
               color: Colors.black12,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Image.asset("images/imagesss.jpg"),
                   Container(
                     color: Colors.white,
                     height: 30,
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             child: Icon(
                               CupertinoIcons.heart,
                               color: Colors.deepOrangeAccent,
                             ),
                           ),
                           Row(
                             children: [
                               Icon(
                                 Icons.share,
                                 color: Colors.deepOrangeAccent,
                               ),
                               SizedBox(
                                 width: 20,
                               ),
                               Icon(
                                 Icons.save_alt,
                                 color: Colors.deepOrangeAccent,
                               )
                             ],
                           ),
                         ],
                       ),
                     ),
                   )
                 ],
               ),
             ),
           );
         },
       ),flex: 4,)


        ],
      ),
    );


  }

  Widget methodForAddPoem(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Card(
        color: Colors.black12,
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height:200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/imagesss.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextField(
                    maxLines: null, // Allow multiple lines of text
                    expands: true, // Allow the TextField to expand vertically
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your poem',
                      hintStyle: TextStyle(color: Colors.black12),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text("Draft",style: TextStyle(color: Colors.white),),style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
              ),),
                    SizedBox(width: 220,),
                    ElevatedButton(onPressed: (){}, child: Text("Post",style: TextStyle(color: Colors.white),),style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
