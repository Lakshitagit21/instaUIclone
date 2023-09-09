import 'dart:convert';

import 'package:http/http.dart' as http;

import 'util/user_posts.dart';

Future<List<UserPosts>> fetchInstagramPosts() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);

    return data.map((post) {
      return UserPosts(
        imageUrl: post['url'],
        caption: post['title'], 
        name:  '',
      );
    }).toList();
  } else {
    throw Exception('Failed to load posts');
  }
}
