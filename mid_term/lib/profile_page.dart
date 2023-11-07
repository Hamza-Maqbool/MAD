import 'package:flutter/material.dart';

import 'friends_page.dart';

class ProfilePage extends StatelessWidget {
  final Friend friend;

  ProfilePage({required this.friend});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${friend.name}\'s Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Section(title: 'Portfolio', content: 'List of portfolio items here'),
            Section(title: 'Skills', content: 'List of skills here'),
            Section(title: 'Articles', content: 'List of articles here'),
          ],
        ),
      ),
    );
  }
}
Color myLightPurple = Color(0xFF9C27B0); // Replace the hex code with your desired color code

class Section extends StatelessWidget {
  final String title;
  final String content;

  Section({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: myLightPurple, // Use your custom color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(content),
        ],
      ),
    );
  }
}

