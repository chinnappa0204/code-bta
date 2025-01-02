import 'package:flutter/material.dart';

class Front extends StatelessWidget {
  const Front({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    // Navigate to 'log' after 5 seconds
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/notification');
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top Image
          Positioned(
            top: screenHeight * 0.1, // Positioned below the top edge
            left: 0,
            right: 0,
            child: Image.network(
              'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/cit%20logo.png',
              width: screenWidth,
              height: screenHeight * 0.2, // Adapts to 20% of screen height
              fit: BoxFit.contain,
              semanticLabel: 'Tracking app logo',
            ),
          ),

          // Bottom Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.network(
              'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/bottom_banner.png',
              width: screenWidth,
              height: screenHeight * 0.2, // Adapts to 20% of screen height
              fit: BoxFit.cover,
              semanticLabel: 'Background image',
            ),
          ),

          // Slogan Text Positioned
          Positioned(
            bottom: screenHeight * 0.12, // Adjust to align above bottom banner
            left: screenWidth * 0.15,
            right: screenWidth * 0.15,
            child: Text(
              'Track, Ride, Arrive',
              style: TextStyle(
                color: const Color(0xFF2B1968),
                fontSize: 32,
                fontFamily: 'Dancing Script',
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
              semanticsLabel: 'Track, Ride, Arrive slogan',
            ),
          ),
        ],
      ),
    );
  }
}
