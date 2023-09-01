import 'package:flutter/material.dart';

import '../util/reel_template.dart';

class MyReel2 extends StatelessWidget {
  const MyReel2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'zuckerberg',
      videoDescription: 'reels for days',
      numberOfLikes: '1.2M',
      numberOfComments: '232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.pink[300],
      ),
    );
  }
}
