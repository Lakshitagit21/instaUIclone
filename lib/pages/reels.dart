import 'package:flutter/material.dart';

import '../reels/my_reel1.dart';
import '../reels/my_reel2.dart';
import '../reels/my_reel3.dart';

class UserReels extends StatelessWidget {

  final _controller = PageController(initialPage: 0);

  UserReels({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
        MyReel1(),
        MyReel2(),
        MyReel3(),
        ]
        ,
      ),
    );
  }
}
