import 'package:flutter/material.dart';
import 'package:instaclone/util/accounttab1.dart';
import 'package:instaclone/util/accounttab2.dart';
import 'package:instaclone/util/accounttab3.dart';
import 'package:instaclone/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          '237',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Posts')
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          '3237',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Followers')
                      ],
                    ),
                    const Column(
                      children: [
                        Text(
                          '37',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Following')
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lakshita',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('I am a CSE Student '),
                    Text(
                      'youtube.com/lakshita',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: const Center(
                          child: Text('Edit Profile'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: const Center(
                          child: Text('Share Profile'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey)),
                        child: const Center(
                          child: Text('Insights'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    BubbleStories(text: 'Story 1'),
                    BubbleStories(text: 'Story 2'),
                    BubbleStories(text: 'Story 3'),
                    BubbleStories(text: 'Story 4'),
                  ],
                ),
              ),
              const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                  ),
                )
              ]),
              const Expanded(
                  child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
