import 'package:flutter/material.dart';
import 'package:instaclone/util/bubble_stories.dart';
import 'package:instaclone/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Lakshita',
    'Arsh',
    'Dhanu',
    'Kartika',
    'Munish',
    'Gulshan',
    'Moin'
  ];
  UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.message_rounded),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),
          //posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
