import 'package:flutter/material.dart';
import 'package:test_app/pages/dashboard.dart';
import 'package:test_app/pages/profile.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Blogs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEFB4C8),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Blog'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20), // Add space between content and list
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 10), // Add space between list tiles
              itemCount: 3,
              itemBuilder: (context, index) {
                // Define the titles for each ListTile
                List<String> titles = [
                  "Meet Rina: A Stage 2 Breast Cancer Survivor from India",
                  "Breast cancer: “I am a stronger person today”",
                  "Breast cancer survivor finds new calling as a well-being coach in India",
                ];

                List<String> contents = [
                  "Content for Meet Rina: A Stage 2 Breast Cancer Survivor from India",
                  "Content for Breast cancer: “I am a stronger person today”",
                  "Content for Breast cancer survivor finds new calling as a well-being coach in India",
                ];

                List<String> subtitles = [
                  "Rina: Stage 2",
                  "Simran: HER2-Positive",
                  "Shreshta: Stage 3",
                ];

                List<String> imagePaths = [
                  "assets/logob1.png",
                  "assets/logob1.png",
                  "assets/logob3.png",
                ];

                return Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFFFCFDF), // Set background color
                  ),
                  child: ListTile(
                    title: Text(titles[index]), // Set title based on index
                    subtitle: Text(subtitles[index]),
                    leading: Image.asset(
                      imagePaths[index], // Set path of the image in the assets folder
                      width: 40, // Set width of the image
                      height: 40, // Set height of the image
                    ),// Example icon
                    trailing: Icon(Icons.arrow_forward), // Example icon
                    onTap: () {
                      // Action when ListTile is tapped
                    },
                  ),
                );
              },
            ),
          ),
        ],
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
              break;
            case 2:
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
