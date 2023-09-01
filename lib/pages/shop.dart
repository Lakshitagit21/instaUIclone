import 'package:flutter/material.dart';
import 'package:instaclone/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop'),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.shopping_cart_rounded),
                ),
                Icon(Icons.menu),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
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
          const Expanded(child: ShopGrid()),
        ],
      ),
    );
  }
}
