import 'package:flutter/material.dart';
import 'package:test_app/pages/blogs.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        // backgroundColor: Color.(0XFFFDE1E5),
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/pfp.jpg'),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Handle edit button tap
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Personal Information'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle personal information tap
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text('Records'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle records tap
            },
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Data Privacy'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle data privacy tap
            },
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle logout button tap
                  },
                  child: Text('Logout'),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Color(0XFFFF55AB),
        icons: [
          Icons.book,
          Icons.home,
          Icons.person,
        ],
        activeIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Blogs()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
              break;
            case 2:
              // Handle tapping on the person icon
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
              break;
          }
        },
      ),
    );
  }
}
