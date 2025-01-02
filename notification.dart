import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: AppBar(
        backgroundColor: Colors.white, // AppBar background color
        elevation: 0, // Remove AppBar shadow
        centerTitle: true, // Center the title
        leading: Padding(
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/66d8cd9063924a40b5ff660085a6d390/47eef1774647188c4192dad02ee4c12a11336782bc73447b3f1fee8fc1e54072?apiKey=519c90f9460a412a927c33369783438a&',
            width: screenWidth * 0.09,
            height: screenHeight * 0.06,
            fit: BoxFit.contain,
            semanticLabel: 'Notification icon',
          ),
        ),
        title: Text(
          'NOTIFICATIONS',
          style: TextStyle(
            color: const Color(0xFFEDAD03),
            fontSize: screenHeight * 0.04, // Adapts to screen height
            fontFamily: 'Lexend',
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        color: Colors.white, // Keep the body background white
      ),
    );
  }
}
