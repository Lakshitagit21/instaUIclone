import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String caption;

  UserPosts(
      {required this.name, required this.imageUrl, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),
        // Container(
        //   height: 400,
        //   color: Colors.grey[300],

        // ),
        Image.network(
          imageUrl,
          height: 300,
          width: 500,
        ),

        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'munish',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //caption

        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
              text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: [
              TextSpan(
                  text: "$name ",
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text: caption,
              ),
            ],
          )),
        ),
        //comments
      ],
    );
  }
}
