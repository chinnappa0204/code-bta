import 'package:flutter/material.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top Banner Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.network(
              'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/top_banner.png',
              width: screenWidth,
              height: screenHeight * 0.2, // 20% of screen height
              fit: BoxFit.cover,
              semanticLabel: 'Top Banner Image',
            ),
          ),

          // Footer Banner Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.network(
              'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/bottom_banner.png',
              width: screenWidth,
              height: screenHeight * 0.2, // 20% of screen height
              fit: BoxFit.cover,
              semanticLabel: 'Bottom Banner Image',
            ),
          ),

          // Bus Image slightly below the top banner
          Positioned(
            top: screenHeight * 0.1, // 25% of screen height
            left: screenWidth * 0.2, // Centered horizontally with a margin
            right: screenWidth * 0.2,
            child: Image.network(
              'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/yellow%20bus.png',
              width: screenWidth * 0.6, // 60% of screen width
              fit: BoxFit.contain,
              semanticLabel: 'Bus Image',
            ),
          ),
        ],
      ),
    );
  }
}
