import 'package:flutter/material.dart';
import 'friend_details_page.dart';

class FriendsPage extends StatelessWidget {
  final List<Friend> friends = [
    Friend('John Doe', 'john@example.com', 'hamza.jpg', 'A software engineer.'),
    Friend('Jane Smith', 'jane@example.com', 'assets/jane.jpg', 'A designer.'),
    Friend('Alice Johnson', 'alice@example.com', 'assets/alice.jpg', 'A writer.'),
    Friend('Bob Brown', 'bob@example.com', 'assets/bob.jpg', 'A photographer.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(friends[index].imagePath),
            ),
            title: Text(friends[index].name),
            subtitle: Text(friends[index].email),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return FriendDetailsPage(friend: friends[index]);
              }));
            },
          );
        },
      ),
    );
  }
}

class Friend {
  final String name;
  final String email;
  final String imagePath;
  final String description;

  Friend(this.name, this.email, this.imagePath, this.description);
}