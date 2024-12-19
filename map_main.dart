import 'package:flutter/material.dart';

class BannerOverlayScreen extends StatelessWidget {
  const BannerOverlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Placeholder for Map or Main Interface
          Positioned.fill(
            child: Container(
              color: Colors.blue[100], // Replace with your map interface later
            ),
          ),

          // Top Banner Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.network(
              'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/top%20ban%20main.png',
              width: screenWidth,
              height: screenHeight * 0.15, // Adapts to 15% of screen height
              fit: BoxFit.cover,
              semanticLabel: 'Top banner image',
            ),
          ),

          // Logo Image Below the Top Banner
          Positioned(
            top: screenHeight * 0.1, // Slightly below the top banner
            left: (screenWidth - screenWidth * 0.25) / 2, // Center align
            child: Image.network(
              'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/cit%20logo%20main.png',
              width: screenWidth * 0.25, // 25% of screen width
              height: screenHeight * 0.08, // Proportional height
              fit: BoxFit.contain,
              semanticLabel: 'Logo image',
            ),
          ),
        ],
      ),
    );
  }
}
