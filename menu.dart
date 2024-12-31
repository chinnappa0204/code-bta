import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  // Simulated function to fetch user name from database or API
  Future<String> fetchUserName() async {
    // Simulating network delay
    await Future.delayed(Duration(seconds: 0));
    return 'John Doe';  // Replace with actual name fetching logic
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Scaling factors for responsiveness
    final double paddingFactor = screenWidth * 0.05;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Main content area
            Container(
              padding: EdgeInsets.symmetric(horizontal: paddingFactor),
              width: double.infinity,
              height: screenHeight, // Full height of the screen
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Image without any padding, aligned to the top of the screen
                  Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/66d8cd9063924a40b5ff660085a6d390/47eef1774647188c4192dad02ee4c12a11336782bc73447b3f1fee8fc1e54072?apiKey=519c90f9460a412a927c33369783438a&',
                    width: screenWidth * 0.1, // Adjust image size based on screen width
                    height: screenWidth * 0.1,
                    semanticLabel: 'Profile icon',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.06, top: screenHeight * 0.04),
                    child: Text(
                      'HELLO !!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.06, // Adjust font size for responsiveness
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Lexend',
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.02),
                      // Using FutureBuilder to fetch user name
                      child: FutureBuilder<String>(
                        future: fetchUserName(), // Replace with actual function to fetch name
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            // Display loading indicator while fetching data
                            return CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            // Handle any errors that occur
                            return Text(
                              'Error loading name',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: screenWidth * 0.1, // Same size as the static name
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Lexend',
                              ),
                            );
                          } else if (snapshot.hasData) {
                            // Display fetched name
                            return Text(
                              snapshot.data!,
                              style: TextStyle(
                                color: const Color.fromRGBO(237, 173, 3, 0.77),
                                fontSize: screenWidth * 0.1, // Same font size
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Lexend',
                              ),
                            );
                          } else {
                            // In case no data is found
                            return Text(
                              'No name available',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: screenWidth * 0.1, // Same size as the static name
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Lexend',
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  _buildMenuItem('My Profile', screenHeight * 0.03),
                  _buildMenuItem('Routes', screenHeight * 0.02),
                  _buildMenuItem('Notifications', screenHeight * 0.02),
                  _buildMenuItem('Change Password', screenHeight * 0.02),

                  // Full width yellow line with fixed thickness between Change Password and About Us
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.05),
                    child: Container(
                      width: screenWidth, // Full width of the screen
                      height: 2, // Line thickness
                      color: const Color.fromRGBO(237, 173, 3, 0.94), // Yellow color
                    ),
                  ),

                  _buildMenuItem('About Us', screenHeight * 0.03, fontSize: screenWidth * 0.055),
                  _buildMenuItem('Contact Us', screenHeight * 0.02, fontSize: screenWidth * 0.055),
                  _buildMenuItem('Help', screenHeight * 0.02, fontSize: screenWidth * 0.055),

                  // Adjust the position of LOG OUT button to keep it visible
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.04), // Adjust the top padding
                    child: Center(
                      child: Text(
                        'LOG OUT',
                        style: TextStyle(
                          color: const Color.fromRGBO(237, 173, 3, 0.94),
                          fontSize: screenWidth * 0.07, // Adjust logout button font size
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lexend',
                          decoration: TextDecoration.underline, // Underline the text
                          decorationColor: const Color.fromRGBO(237, 173, 3, 0.94), // Yellow color for underline
                          decorationThickness: 2, // Adjust thickness of the underline
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Image fixed at the extreme bottom of the screen
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.network(
                'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/bottom_banner.png',
                width: screenWidth, // Image adjusts to the full width of the screen
                fit: BoxFit.cover, // Ensures it covers the width of the screen without stretching
                semanticLabel: 'Footer image',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String text, double topPadding, {double fontSize = 24}) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: topPadding),
      child: Text(
        text,
        style: TextStyle(
          color: const Color.fromRGBO(60, 60, 60, 1),
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          fontFamily: 'Lexend',
        ),
      ),
    );
  }
}
