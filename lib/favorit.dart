import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class like extends StatefulWidget {
  const like({Key? key}) : super(key: key);

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;

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
              Text(
                "Shreya",
                style: TextStyle(color: Colors.blue),
              )
            ],
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Container(
              height: 320,
              width: 500,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45,width: 3),
                borderRadius:BorderRadius.circular(15),
              ),
              child: Column(
                children: [
              Container(
              margin: EdgeInsets.all(10),
        child: Center(
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 3),
                  borderRadius: BorderRadius.circular(10)),
              child: Image(
                image: AssetImage("${args[0]}"),
              ),
            ),
        ),
      ),

      Container(
        margin: EdgeInsets.all(5),
        child: Center(
            child: Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45, width: 3),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "${args[1]}",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                      fontFamily: 'LibreBaskerville'),
                ),
              ),
            ),
        ),
      ),
                ],
              )
      ),
          ),
      ],
      ),
      bottomSheet: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.grey,
        // selectedLabelStyle:TextStyle(,fontSize: 15) ,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home, size: 20, color: Colors.grey),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
            label: "home",
            // activeIcon: Icon(Icons.home,color: Colors.orange.shade900,),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon:
                  Icon(Icons.favorite, size: 25, color: Colors.orange.shade900),
              onPressed: () {},
            ),
            label: "fovrite",
            activeIcon: Icon(
              Icons.home,
              color: Colors.orange.shade900,
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.account_circle, size: 20, color: Colors.grey),
              onPressed: () {
                Navigator.of(context).pushNamed('p');
              },
            ),
            label: "my profile",
            activeIcon: Icon(
              Icons.home,
              color: Colors.orange.shade900,
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
