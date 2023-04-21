import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'FlutterSkills1',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 16.0),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
          SizedBox(height: 16.0),
          Text(
            'FlutterSKills',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          Text(
            'Hi my friend',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Posts',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Followers',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Following',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              children: List.generate(9, (index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://picsum.photos/200'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
