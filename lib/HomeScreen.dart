
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Exercises.dart';


class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff04a870),

          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 20),
                      child: Text(
                        "Its Sunday today\nSelect your plan and get set go",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontFamily: "Tajawal",

                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                  ],
                ),
                Expanded(child:
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              RaisedButton(onPressed: (){},
                                color: Color(0xffe9e9ea),
                                child: Text(
                                  "RANDOMIZE",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Tajawal",


                                  ),
                                ),
                              ),
                              SizedBox(width:20 ,),
                              RaisedButton(onPressed: (){},
                                color: Color(0xff04a870,),
                                child: Text("  DAY-WISE  ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Tajawal",

                                  ),
                                ),
                              )
                            ],

                          ),
                          Exercises(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Select number of reps",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: "Tajawal",


                                    ),
                                  ),
                                  Container(
                                    height: 100.0,
                                    width: 100,
                                    child: CupertinoPicker(
                                      backgroundColor: Colors.white,
                                      itemExtent: 32.0,
                                      onSelectedItemChanged: (selectedItem){},
                                      children: [
                                        Text("1"),
                                        Text("2"),
                                        Text("3"),
                                        Text("4"),
                                        Text("5"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                height: 50,
                                width: 50,
                                child: GestureDetector(
                                  onTap: (){},
                                  child: Image.asset("assets/images/play.png"),
                                ),
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
        ),

    );
  }
}
