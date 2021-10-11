

import 'package:flutter/material.dart';
import 'Exercise.dart';
import 'package:flutter_swiper/flutter_swiper.dart' ;
class Exercises extends StatelessWidget {

  final List<Exercise> availableList=[
    Exercise(
      name: "Pushup",
      imageUrl: "assets/images/1.png",
      songUrl: "assets/audio/Song 14 - Rock.mp3",
      duration: 10),
    Exercise(
        name: "Chinups",
        imageUrl: "assets/images/2.png",
        songUrl: "assets/audio/Song 18 - Rock.mp3",
        duration: 9),
    Exercise(
        name: "Squats",
        imageUrl: "assets/images/4.png",
        songUrl: "assets/audio/Song 14 - Rock.mp3",
        duration: 9),
    Exercise(
        name: "Pushup",
        imageUrl: "assets/images/1.png",
        songUrl: "assets/audio/Song 14 - Rock.mp3",
        duration: 9),
    Exercise(
        name: "Cardio",
        imageUrl: "assets/images/9.png",
        songUrl: "assets/audio/Song 34 - Pop.mp3",
        duration: 8),
    Exercise(
        name: "Yoga",
        imageUrl: "assets/images/10.png",
        songUrl: "assets/audio/joined audio.mp3",
        duration: 7),
    Exercise(
        name: "Pullups",
        imageUrl: "assets/images/11.png",
        songUrl: "assets/audio/50 - Up from the ashes.mp3",
        duration: 6),
    Exercise(
        name: "Streching",
        imageUrl: "assets/images/6.png",
        songUrl: "assets/audio/50 - Up from the ashes.mp3",
        duration: 6),
    Exercise(
        name: "Chinups",
        imageUrl: "assets/images/8.png",
        songUrl: "assets/audio/Song 18 - Rock.mp3",
        duration: 9),
    Exercise(
        name: "Crunches",
        imageUrl: "assets/images/7.png",
        songUrl: "assets/audio/Song 18 - Rock.mp3",
        duration: 9),


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 300,
      child: Swiper(
        itemCount: availableList.length,
        itemBuilder: (BuildContext context,int index){
          return Container(
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xfffaf4f4),
              borderRadius: BorderRadius.circular(20.0),

            ),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white70,width: 1,
                ),
                  borderRadius: BorderRadius.circular(20.0),

              ),
              elevation: 10.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(availableList[index].name,
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 20.0,
                    ),
                  ),
                  Image.asset(availableList[index].imageUrl,
                    fit: BoxFit.cover,
                    height: 100.0,


                  ),
                  Text("${availableList[index].duration} Seconds",
                    style: TextStyle(
                      fontFamily: "Tajawal",
                      fontSize: 20.0,

                    ),
                  ),
                ],
              ),
            ),
          );
        },
        autoplay: false,
        scale: 0.5,
        viewportFraction: 0.6,
      ),
    );
  }
}
