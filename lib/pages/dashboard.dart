import 'package:flutter/material.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:test_app/pages/profile.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Color(0XFFFF55AB),
        icons: [Icons.book, Icons.home, Icons.person],
        activeIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Blogs())
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard())
              );
              // Handle tapping on the home icon
              break;
            case 2:
              // Handle tapping on the person icon
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile())
              );
              break;
          }
        },
      ),
    );
  }
}
