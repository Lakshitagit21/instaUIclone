import 'package:flutter/material.dart';
import 'package:instaclone/util/exploregrid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  color: Color.fromRGBO(158, 158, 158, 1),
                ),
                Text(
                  'Search',
                  style: TextStyle(
                    color: Color.fromRGBO(158, 158, 158, 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: const ExploreGrid(),
    );
  }
}
