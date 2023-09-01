import 'package:flutter/material.dart';

import '../util/reel_template.dart';

class MyReel3 extends StatelessWidget {
  const MyReel3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'randomUser',
      videoDescription: 'flutter tutorial',
      numberOfLikes: '123K',
      numberOfComments: '232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.blue[300],
      ),
    );
  }
}
