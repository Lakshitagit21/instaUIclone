import 'package:flutter/material.dart';


import '../util/reel_template.dart';

class MyReel1 extends StatelessWidget {
  const MyReel1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'lakshita000',
      videoDescription: 'insta clone',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.deepPurple[300],
      ),
    );
  }
}