import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Image.network(
          'https://www.instagram.com/static/images/web/mobile_nav_type_logo.png/735145cfe0a4.png',
          height: 40,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Story
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(8, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.pinkAccent,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            'https://randomuser.me/api/portraits/men/${index + 10}.jpg',
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        index == 0 ? 'Your Story' : 'user$index',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          const Divider(height: 1),
          // Post
          _InstagramPost(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/men/11.jpg',
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class _InstagramPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://randomuser.me/api/portraits/men/12.jpg',
            ),
          ),
          title: Row(
            children: const [
              Text('joshua_l', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 6),
              Icon(Icons.verified, color: Colors.blue, size: 16),
            ],
          ),
          subtitle: const Text('Tokyo, Japan'),
          trailing: const Icon(Icons.more_vert),
        ),
        // Image
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
            fit: BoxFit.cover,
          ),
        ),
        // Actions
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.mode_comment_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.send_outlined),
                onPressed: () {},
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),
        ),
        // Likes
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Liked by craig_love and 44,686 others',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // Caption
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'joshua_l ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text:
                      'The game in Japan was amazing and I want to share some photos',
                ),
              ],
            ),
          ),
        ),
        // Comment
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          child: Text(
            'View all 245 comments',
            style: TextStyle(color: Colors.grey, fontSize: 13),
          ),
        ),
        // Time
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          child: Text(
            '2 hours ago',
            style: TextStyle(color: Colors.grey, fontSize: 11),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
