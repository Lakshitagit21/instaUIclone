// ignore: file_names
import 'package:flutter/material.dart';
import 'package:instaclone/fetch.dart';
import 'package:instaclone/pages/account.dart';
import 'package:instaclone/pages/home.dart';
import 'package:instaclone/pages/reels.dart';
import 'package:instaclone/pages/search.dart';
import 'package:instaclone/pages/shop.dart';
import 'package:instaclone/util/user_posts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  late Future<List<UserPosts>> posts;

  @override
  void initState() {
    super.initState();
    posts = fetchInstagramPosts();
  }



  final List<Widget> _children = [
    UserHome(),
    const UserSearch(),
    UserReels(),
    const UserShop(),
    const UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
          ]),
    );
  }
}
