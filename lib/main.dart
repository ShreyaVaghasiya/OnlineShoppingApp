import 'dart:io';

import 'package:flutter/material.dart';

import 'Globals.dart';
import 'favorit.dart';
import 'myprofile.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'LibreBaskerville'),
    debugShowCheckedModeBanner: false,
   routes:
    {
      '/' : (context) => Ecomm(),
      'l' : (context) => like(),
      'p' : (context) => profile(),
    },
  ));
}

class Ecomm extends StatefulWidget {
  const Ecomm({Key? key}) : super(key: key);

  @override
  State<Ecomm> createState() => _EcommState();
}

class _EcommState extends State<Ecomm> {
  List<Map<String,dynamic>> onemap = [
    {
      'pic' : 'assets/myimages/images (5).jpg',
      'name' : 'Nike Air Max 200',
      'price' : '1000',
    },
    {
      'pic' : 'assets/myimages/images (6).jpg',
      'name' : 'Nike Air Max 330',
      'price' : '2000',
    },
    {
      'pic' : 'assets/myimages/images (7).jpg',
      'name' : 'Nike Air Max 400',
      'price' : '4500',
    },
    {
      'pic' : 'assets/myimages/images (8).jpg',
      'name' : 'Nike Air Max 500',
      'price' : '5500',
    },
    {
      'pic' : 'assets/myimages/images (9).jpg',
      'name' : 'Nike Air Max 600',
      'price' : '7500',
    },
  ];
  List<Map<String,dynamic>> twomap = [
    {
      'pic' : 'assets/myimages/Sneakers2.png',
      'name' : 'Fendi',
      'price' : '1000',
    },
    {
      'pic' : 'assets/myimages/wear2.jpg',
      'name' : 'Zara',
      'price' : '2000',
    },
    {
      'pic' : 'assets/myimages/wear3.jpg',
      'name' : 'Adidas',
      'price' : '4500',
    },
    {
      'pic' : 'assets/myimages/wear4.jpg',
      'name' : 'Nike',
      'price' : '5500',
    },
    {
      'pic' : 'assets/myimages/wear5.jpg',
      'name' : 'Gucci',
      'price' : '7500',
    },
  ];
  List<Map<String,dynamic>> threemap = [
    {
      'pic' : 'assets/myimages/watch1.jpg',
      'name' : 'Montblanc',
      'price' : '3300',
    },
    {
      'pic' : 'assets/myimages/images (14).jpg',
      'name' : 'Audemars Piguet',
      'price' : '6500',
    },
    {
      'pic' : 'assets/myimages/images (17).jpg',
      'name' : 'Cartier',
      'price' : '9500',
    },
    {
      'pic' : 'assets/myimages/images (16).jpg',
      'name' : 'Blancpain',
      'price' : '10,500',
    },
    {
      'pic' : 'assets/myimages/images (17).jpg',
      'name' : 'Longines',
      'price' : '15,000',
    },
  ];
  List<Map<String,dynamic>> fourmap = [
    {
      'pic' : 'assets/myimages/Laptop1.jpg',
      'name' : 'HP Pavilion',
      'price' : '65,000',
    },
    {
      'pic' : 'assets/myimages/laptop2.jpg',
      'name' : 'HP Zbook',
      'price' : '95,000',
    },
    {
      'pic' : 'assets/myimages/download (5).jpg',
      'name' : 'HP Pavilion Aero',
      'price' : '80,000',
    },
    {
      'pic' : 'assets/myimages/images (20).jpg',
      'name' : 'HP Chromebook',
      'price' : '75,500',
    },
    {
      'pic' : 'assets/myimages/images (21).jpg',
      'name' : 'HP Pavilion',
      'price' : '85,000',
    },
  ];
  List<Map<String,dynamic>> fivemap = [
    {
      'pic' : 'assets/myimages/images (25).jpg',
      'name' : 'Real me',
      'price' : '20,000',
    },
    {
      'pic' : 'assets/myimages/laptop2.jpg',
      'name' : 'Motorola',
      'price' : '35,000',
    },
    {
      'pic' : 'assets/myimages/images (22).jpg',
      'name' : 'Samsung Galaxy',
      'price' : '45,000',
    },
    {
      'pic' : 'assets/myimages/images (23).jpg',
      'name' : 'oppo',
      'price' : '55,000',
    },
    {
      'pic' : 'assets/myimages/images (24).jpg',
      'name' : 'vivo',
      'price' : '75,000',
    },
  ];
  List<Map<String,dynamic>> othermap = [
    {
      'pic' : 'assets/myimages/images (5).jpg',
      'name' : 'Nike Air Max 200',
      'price' : '1000',
    },
    {
      'pic' : 'assets/myimages/images (6).jpg',
      'name' : 'Nike Air Max 330',
      'price' : '2000',
    },
    {
      'pic' : 'assets/myimages/images (7).jpg',
      'name' : 'Nike Air Max 400',
      'price' : '4500',
    },
    {
      'pic' : 'assets/myimages/images (8).jpg',
      'name' : 'Nike Air Max 500',
      'price' : '5500',
    },
    {
      'pic' : 'assets/myimages/images (9).jpg',
      'name' : 'Nike Air Max 600',
      'price' : '7500',
    },
  ];
  String Search = "";
  String one = "Sneakers";
  String Two = "wear";
  String Three = "Watch";
  String Four = "Laptop";
  String Five = "Mobile";
  int index = 0;
  String fvrimage = "";
  String fvrname = "";
  int price = 0;
  int i = 0;
  dynamic fvricon = Icons.favorite_outline;
  dynamic fvrcolor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.grey,
              ),
            ),



        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                  child: Text("Shreya",style: TextStyle(color: Colors.blue),))
            ],
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Padding(padding: EdgeInsets.all(10)),
          Align(
              alignment: Alignment.topLeft,
              child: Expanded(
                flex: 2,
                child: Container(
                    height: 100,
                    width: 230,
                    // color: Colors.grey,
                    alignment: Alignment.center,
                    child: Text(
                      "Our\nProducts",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontFamily: 'LibreBaskerville'),
                    )),
              )),
          Padding(padding: EdgeInsets.all(10)),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 50,
              width: 380,
              child: TextField(
                onChanged: (val) {
                  Search = val;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText: 'Search Products',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  // suffixIcon: Icon(Icons.search,color: Colors.grey,),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  // border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                ),
                style:
                TextStyle(color: Colors.black, fontStyle: FontStyle.normal),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 70,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: (Search == one)
                                ? Color(0xffD36B00)
                                : Colors.grey,
                            width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('assets/myimages/Sneakrs1.jpg'),
                            height: 70,
                            width: 50,
                          ),
                          Text(
                            "$one",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color:
                          (Search == Two) ? Color(0xffD36B00) : Colors.grey,
                          width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/myimages/Sneakers2.png'),
                          height: 70,
                          width: 50,
                        ),
                        Text(
                          "$Two",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: (Search == Three)
                              ? Color(0xffD36B00)
                              : Colors.grey,
                          width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/myimages/watch1.jpg'),
                          height: 70,
                          width: 50,
                        ),
                        Text(
                          "$Three",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: (Search == Four)
                              ? Color(0xffD36B00)
                              : Colors.grey,
                          width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/myimages/Laptop1.jpg'),
                          height: 70,
                          width: 50,
                        ),
                        Text(
                          "$Four",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 70,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: (Search == Five)
                              ? Color(0xffD36B00)
                              : Colors.grey,
                          width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/myimages/Mobile1.jpg'),
                          height: 70,
                          width: 50,
                        ),
                        Text(
                          "$Five",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ),
          ),
          (Search == one)
              ?
         Expanded(
             flex: 4,
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(padding: EdgeInsets.all(5)),
                  ...onemap.map((e){
                    return  Row(
                      children: [
                        Container(
                          margin:EdgeInsets.all(10),
                          child: Container(
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                              // color: Colors.black12,
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment:Alignment.centerLeft,
                                  child: Container(
                                    margin:EdgeInsets.all(10),
                                    child: GestureDetector(
                                        onTap: (){
                                          setState(() {
                                           Navigator.pushNamed(context,'l',arguments: [
                                             e['pic'],
                                             e['name'],
                                             e['price'],
                                           ]);
                                          });
                                        },
                                        child: Icon(
                                            fvricon,
                                            color: fvrcolor, size: 20)),
                                  ),
                                ),
                                // Padding(padding: EdgeInsets.all(5)),
                                Image(
                                  image: AssetImage(
                                      '${e['pic']}'),
                                  height: 170,
                                  width: 180,
                                ),
                                Text(
                                  "${e['name']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Trending Now",
                                  style: TextStyle(
                                      fontFamily: 'ABeeZee',
                                      fontSize: 15,
                                      color: Colors.orange.shade900),
                                ),
                                Text(
                                  "${e['price']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                   Padding(padding: EdgeInsets.all(5)),

                 ],
               ),
             ),
           )
              : (Search == Two)
              ? Expanded(
            flex: 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  ...twomap.map((e){
                    return  Row(
                      children: [
                        Container(
                          margin:EdgeInsets.all(10),
                          child: Container(
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                              // color: Colors.black12,
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                        });
                                      },
                                      child: Icon(
                                          fvricon,
                                          color: fvrcolor, size: 20)),
                                ),
                                // Padding(padding: EdgeInsets.all(5)),
                                Image(
                                  image: AssetImage(
                                      '${e['pic']}'),
                                  height: 170,
                                  width: 180,
                                ),
                                Text(
                                  "${e['name']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Trending Now",
                                  style: TextStyle(
                                      fontFamily: 'ABeeZee',
                                      fontSize: 15,
                                      color: Colors.orange.shade900),
                                ),
                                Text(
                                  "${e['price']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                  Padding(padding: EdgeInsets.all(5)),

                ],
              ),
            ),
          )
              : (Search == Three)
              ? Expanded(
            flex: 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  ...threemap.map((e){
                    return  Row(
                      children: [
                        Container(
                          margin:EdgeInsets.all(10),
                          child: Container(
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                              // color: Colors.black12,
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                        });
                                      },
                                      child: Icon(
                                          fvricon,
                                          color: fvrcolor, size: 20)),
                                ),
                                // Padding(padding: EdgeInsets.all(5)),
                                Image(
                                  image: AssetImage(
                                      '${e['pic']}'),
                                  height: 170,
                                  width: 180,
                                ),
                                Text(
                                  "${e['name']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Trending Now",
                                  style: TextStyle(
                                      fontFamily: 'ABeeZee',
                                      fontSize: 15,
                                      color: Colors.orange.shade900),
                                ),
                                Text(
                                  "${e['price']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                  Padding(padding: EdgeInsets.all(5)),

                ],
              ),
            ),
          )
              : (Search == Four)
              ? Expanded(
            flex: 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  ...fourmap.map((e){
                    return  Row(
                      children: [
                        Container(
                          margin:EdgeInsets.all(10),
                          child: Container(
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                              // color: Colors.black12,
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                        });
                                      },
                                      child: Icon(
                                          fvricon,
                                          color: fvrcolor, size: 20)),
                                ),
                                // Padding(padding: EdgeInsets.all(5)),
                                Image(
                                  image: AssetImage(
                                      '${e['pic']}'),
                                  height: 170,
                                  width: 180,
                                ),
                                Text(
                                  "${e['name']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Trending Now",
                                  style: TextStyle(
                                      fontFamily: 'ABeeZee',
                                      fontSize: 15,
                                      color: Colors.orange.shade900),
                                ),
                                Text(
                                  "${e['price']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                  Padding(padding: EdgeInsets.all(5)),

                ],
              ),
            ),
          )
              : (Search == Five)
              ? Expanded(
            flex: 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  ...fivemap.map((e){
                    return  Row(
                      children: [
                        Container(
                          margin:EdgeInsets.all(10),
                          child: Container(
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                              // color: Colors.black12,
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                        });
                                      },
                                      child: Icon(
                                          fvricon,
                                          color: fvrcolor, size: 20)),
                                ),
                                // Padding(padding: EdgeInsets.all(5)),
                                Image(
                                  image: AssetImage(
                                      '${e['pic']}'),
                                  height: 170,
                                  width: 180,
                                ),
                                Text(
                                  "${e['name']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Trending Now",
                                  style: TextStyle(
                                      fontFamily: 'ABeeZee',
                                      fontSize: 15,
                                      color: Colors.orange.shade900),
                                ),
                                Text(
                                  "${e['price']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                  Padding(padding: EdgeInsets.all(5)),

                ],
              ),
            ),
          )
              : Expanded(
            flex: 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  ...othermap.map((e){
                    return  Row(
                      children: [
                        Container(
                          margin:EdgeInsets.all(10),
                          child: Container(
                            height: 330,
                            width: 200,
                            decoration: BoxDecoration(
                              // color: Colors.black12,
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                        });
                                      },
                                      child: Icon(
                                          fvricon,
                                          color: fvrcolor, size: 20)),
                                ),
                                // Padding(padding: EdgeInsets.all(5)),
                                Image(
                                  image: AssetImage(
                                      '${e['pic']}'),
                                  height: 170,
                                  width: 180,
                                ),
                                Text(
                                  "${e['name']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Trending Now",
                                  style: TextStyle(
                                      fontFamily: 'ABeeZee',
                                      fontSize: 15,
                                      color: Colors.orange.shade900),
                                ),
                                Text(
                                  "${e['price']}",
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                  Padding(padding: EdgeInsets.all(5)),

                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          // Expanded(
          //   flex: 2,
          //   child: Row(),
          // ),
        ],
      ),
//       floatingActionButton: FloatingActionButton(onPressed: () {}, child:Icon(Icons.home),),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
// bottomNavigationBar: BottomAppBar(
//   shape:CircularNotchedRectangle(),
//   elevation: 50,
// ),

    bottomSheet:  BottomNavigationBar(
elevation:0,
        selectedItemColor: Colors.grey,
 // selectedLabelStyle:TextStyle(,fontSize: 15) ,
      type:BottomNavigationBarType.fixed , items: [
      BottomNavigationBarItem(
        icon: IconButton(icon:Icon(Icons.home,size:25,color:Colors.orange.shade900),onPressed: (){


        },),
        label: "home",
        // activeIcon: Icon(Icons.home,color: Colors.orange.shade900,),
      ),BottomNavigationBarItem(
        icon: IconButton(icon:Icon(Icons.favorite,size:20,color:Colors.grey),onPressed: (){
          Navigator.of(context).pushNamed('l');



        },),
        label: "fovrite",
        activeIcon: Icon(Icons.home,color: Colors.orange.shade900,),
      ),
      BottomNavigationBarItem(
        icon: IconButton(icon:Icon(Icons.account_circle,size:20,color:Colors.grey),onPressed: (){

          Navigator.of(context).pushNamed('p');
        },),
        label: "my profile",
        activeIcon: Icon(Icons.home,color: Colors.orange.shade900,),
      ),

    ],
    ),
      resizeToAvoidBottomInset: false,
    );
  }
}
