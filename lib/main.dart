import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  TextEditingController searchcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Colors.pink[50],
     body: Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
       ),

       margin: EdgeInsets.fromLTRB(2, 18, 2, 0),
       padding: EdgeInsets.all(10),
       child: Column(
         children: [
           Row(
             children: [
               CircleAvatar(
                 radius: 20.0,
                 backgroundColor: Colors.pink[50],

              child: ClipRRect(
                child: Image.asset("assets/images/IMG_20200510_185139.jpg"),
                borderRadius: BorderRadius.circular(50.0),
              ),



              //   backgroundImage: Image.asset("assets/images/IMG_20200510_185139.jpg") as ImageProvider,
               ),
             SizedBox(width: 10,),
             Text("Hi , Shubham Kumar",style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.bold,
             ),),
               SizedBox(width: 85,),

               Icon(Icons.notifications,size: 25),
             ],
           ),

           SizedBox(height: 20,),

           Row(
             children: [
               Text("Discover The ",style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w400,
               ),),
             ],
           ),

           SizedBox(height: 12,),

           Row(
             children: [
            Text("Beauty Of the World",style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),),
             ],
           ),

           SizedBox(height: 22),

           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(
                   padding: EdgeInsets.all(3),
                   width: 250,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,

                   ),
                   // color: Colors.black,
                   child: Row(
                     children: [
                       Container(
                         padding: EdgeInsets.fromLTRB(10, 5, 8, 5),
                         //  color:Colors.red,
                         child: Icon(Icons.search,color: Colors.black,size: 30,),
                       ),
                       SizedBox(width: 5,),
                       Expanded(
                           child: TextField(
                         controller: searchcontroller,
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Search Your PLace",
                         ),
                           ))
                     ],
                   )
               ),

               SizedBox(width: 25,),

               Container(
                 width: 60,
                 height: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.black,
                 ),

                 child: Icon(Icons.filter,color: Colors.white,),
               )
             ],
           ),

           SizedBox(height: 20),


           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text("Categories",style: TextStyle(
                 fontWeight: FontWeight.w800,
                 fontSize: 25,
               ),),

               SizedBox(width: 150),

               Container(

                 child: Row(
                   children: [
                     Text(
                       "More",style: TextStyle(
                       fontSize: 17,
                       fontWeight: FontWeight.w300,
                     ),
                     ),

                     Icon(Icons.arrow_right_alt_rounded),

                   ],
                 )
               ),
             ],
           ),
           SizedBox(height: 20),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 width: 70,
                 height: 70,
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.white,
                 ),
               child: Image.network("https://tse4.mm.bing.net/th?id=OIP.tdZptjlIptCmDSwUn_ELXwHaF7&pid=Api&P=0&w=215&h=172"),
               ),
               Container(
                 width: 70,
                 height: 70,
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.white,
                 ),
               child: Image.network("https://tse2.mm.bing.net/th?id=OIP.xi7kVZyjkagi8KGaA5djqgHaFK&pid=Api&P=0&w=247&h=172"),
               ),
               Container(
                 width: 70,
                 height: 70,
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.white,
                 ),
              child: Image.network("https://tse2.mm.bing.net/th?id=OIP.xuf7UJZBoTtrTYib39MZIAHaEr&pid=Api&P=0&w=254&h=160"),
               ),
               Container(
                 width: 70,
                 height: 70,
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   color: Colors.white,
                 ),
               child: Image.network("https://tse2.mm.bing.net/th?id=OIP.DS5cFvbYEtF9DIByGlyvmAHaFL&pid=Api&P=0&w=276&h=193"),
               ),
             ],
           ),

           SizedBox(height: 12),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Text("Camp",style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w300,
               )),
               Text("Forest",style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w300,
               )),
               Text("Mountain",style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w300,
               )),
               Text("Ocean",style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w300,
               )),
             ],
           ),

           SizedBox(height: 20),

           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text("Popular Places",style: TextStyle(
                 fontWeight: FontWeight.w800,
                 fontSize: 25,
               ),),

               SizedBox(width: 80),

               Container(

                   child: Row(
                     children: [
                       Text(
                         "Explore",style: TextStyle(
                         fontSize: 17,
                         fontWeight: FontWeight.w300,
                       ),
                       ),

                       Icon(Icons.arrow_right_alt_rounded),

                     ],
                   )
               ),
             ],
           ),

           SizedBox(height: 20),
           Container(
             height: 240,
             width: 360,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.white,
             ),
              child:Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    height: 140,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.yB_CY-3pUUVHZbRbvur7HAHaE8&pid=Api&P=0&w=276&h=184"),
                )
                //    image: Image.network("https://tse4.mm.bing.net/th?id=OIP.yB_CY-3pUUVHZbRbvur7HAHaE8&pid=Api&P=0&w=276&h=184"),
                    ),
               // child: Image.network("https://tse4.mm.bing.net/th?id=OIP.yB_CY-3pUUVHZbRbvur7HAHaE8&pid=Api&P=0&w=276&h=184",),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    height: 90,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),

                   child:Column(
                     children: [
                       Row(
                         //mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text("Logo Di Braies,Italy",style: TextStyle(
                             fontWeight: FontWeight.w800,
                             fontSize: 17,
                           ),),
                           SizedBox(width: 100),

                           Icon(Icons.star,color: Colors.deepOrangeAccent,),
                           SizedBox(width: 10),
                           Text("4.2",style: TextStyle(
                             fontSize: 17,
                           ),),


                         ],
                       ),
                       SizedBox(height: 15),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Text("The Pragser Wildsee,or Lake Prags...",style: TextStyle(
                             fontWeight: FontWeight.w300,
                             fontSize: 18,
                           ),),


                         ],
                       ),
                     ],
                   )
                  ),
                ],
              )
           )

         ],
       )
     ),
      bottomNavigationBar: BottomNavigationBar(
  selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
     //   currentIndex: _selectedIndex,
        //      //   onTap: onTabNav,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label:  ("Home").toString(),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_drop_down_circle,),
            label:  ("history").toString(),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,),
            label:  ("Cart"),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label:  ("me").toString(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label:  ("me").toString(),
          ),
        ],
      ),
    );
  }
}
