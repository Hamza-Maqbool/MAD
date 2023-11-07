import 'package:flutter/material.dart';

import 'friends_page.dart';

class FriendDetailsPage extends StatelessWidget {
  final Friend friend;

  FriendDetailsPage({required this.friend});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(friend.name),
      ),
      body: Container(
        color: Colors.purple, // Change the color as desired
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(friend.imagePath),
              ),
              Text(friend.name, style: TextStyle(color: Colors.white)),
              Text(friend.description, style: TextStyle(color: Colors.white)),
              ElevatedButton(
                onPressed: () {
                  // Implement hire functionality
                },
                child: Text('Hire Me'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement follow functionality
                },
                child: Text('Follow'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
