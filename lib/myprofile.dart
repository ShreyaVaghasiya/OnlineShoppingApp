import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int _index = 0;
 String myname = "user";

  @override
  Widget build(BuildContext context) {
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
              Text("Shreya",style: TextStyle(color: Colors.blue),)
            ],
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:Stepper(
        physics: ScrollPhysics(),
        elevation: 20,
        type: StepperType.horizontal,
        currentStep: _index,
        onStepCancel: () {
          if (_index > 0) {
            setState(() {
              _index = _index-=1;

            });
          }
        },
        onStepContinue: () {
          if (_index <= 0) {
            setState(() {
              _index += 1;
            });
          }
        },
        onStepTapped: (int index) {
          setState(() {
            _index = index;
          });
        },
        steps: <Step>[
          Step(
            title: const Text('Name'),
            content:Column(
              children: [
                TextFormField(
                  onChanged:(value) {
                    myname = value;
                  },
                  decoration: InputDecoration(
                    hintText: "First Name",

                  ),


                ),
                Padding(padding: EdgeInsets.all(10)),
                TextFormField(
                  onChanged:(value) {

                  },
                  decoration: InputDecoration(
                    hintText: "Last Name",

                  ),


                )
              ],
            )
          ),
           Step(
              title: const Text('Contact'),
              content:TextFormField(
                onChanged:(value) {

                },
                decoration: InputDecoration(
                  hintText: "phone no",

                ),


              )
          ),
          Step(
              title: const Text('Address'),
              content:Column(
                children: [
                  TextFormField(
                    onChanged:(value) {

                    },
                    decoration: InputDecoration(
                      hintText: "House no",

                    ),


                  ), Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    onChanged:(value) {

                    },
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: "Street Name",

                    ),


                  ), Padding(padding: EdgeInsets.all(10)),
                  TextFormField(
                    onChanged:(value) {

                    },
                    decoration: InputDecoration(
                      hintText: "Area Name",

                    ),


                  ), Padding(padding: EdgeInsets.all(10)),TextFormField(
                    onChanged:(value) {

                    },
                    decoration: InputDecoration(
                      hintText: "City Name",

                    ),


                  ),

                ],
              )
          ),

        ],
      ),
      bottomSheet:  BottomNavigationBar(
        elevation:0,
        selectedItemColor: Colors.grey,
        // selectedLabelStyle:TextStyle(,fontSize: 15) ,
        type:BottomNavigationBarType.fixed , items: [
        BottomNavigationBarItem(
          icon: IconButton(icon:Icon(Icons.home,size:20,color:Colors.grey),onPressed: (){
            Navigator.of(context).popUntil((route) => route.isFirst);

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
          icon: IconButton(icon:Icon(Icons.account_circle,size:25,color:Colors.orange.shade900),onPressed: (){


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
