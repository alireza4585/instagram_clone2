import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 120.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10.0),
                _StoryButton(),
                _buildStory('images/h1.jpg', 'User 1'),
                _buildStory('images/h2.jpg', 'User 2'),
                _buildStory('images/h3.jpg', 'User 3'),
                _buildStory('images/h4.jpg', 'User 4'),
                _buildStory('images/h5.jpg', 'User 5'),
                _buildStory('images/h6.jpg', 'User 6'),
              ],
            ),
          ),
          Divider(),
          _Post(
            username: 'johndoe',
            caption: 'This is my first post!',
            imageUrl: 'https://picsum.photos/300/205',
          ),
          _Post(
            username: 'janedoe',
            caption: 'Hello, world!',
            imageUrl: 'https://picsum.photos/300/205',
          ),
          _Post(
            username: 'jimmy',
            caption: 'Flutter is awesome!',
            imageUrl: 'https://picsum.photos/300/205',
          ),
        ],
      ),
    );
  }
}

class _StoryButton extends StatelessWidget {
  const _StoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 70.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 3.0, color: Colors.pink),
      ),
      child: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

Widget _buildStory(String image, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

class _Post extends StatelessWidget {
  final String username;
  final String caption;
  final String imageUrl;

  const _Post({
    Key? key,
    required this.username,
    required this.caption,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/50',
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    username,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 400.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                    icon: Icon(Icons.comment_outlined),
                    onPressed: () {},
                  ),
                  SizedBox(width: 10.0),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {},
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${username}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text('${caption}'),
            ],
          ),
        ),
      ],
    );
  }
}
