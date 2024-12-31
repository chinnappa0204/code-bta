import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen height and width
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity, // Take up the full screen height
        color: Colors.white, // Set background color to white
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05, // Adjust horizontal padding
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile icon at the top
            Image.network(
              'https://cdn.builder.io/api/v1/image/assets/66d8cd9063924a40b5ff660085a6d390/47eef1774647188c4192dad02ee4c12a11336782bc73447b3f1fee8fc1e54072?apiKey=519c90f9460a412a927c33369783438a&',
              width: screenWidth * 0.08, // Proportional width
              height: screenHeight * 0.08, // Proportional height
              semanticLabel: 'Profile icon',
            ),
            SizedBox(height: screenHeight * 0.02),

            // "MY PROFILE" title
            Center(
              child: Text(
                'MY PROFILE',
                style: TextStyle(
                  fontSize: screenHeight * 0.035,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFEDAD03),
                  fontFamily: 'Lexend',
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            // Form fields
            _buildFormField(label: 'Name', placeholder: '', screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(height: screenHeight * 0.015),
            _buildFormField(label: 'Email', placeholder: '', keyboardType: TextInputType.emailAddress, screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(height: screenHeight * 0.015),
            _buildFormField(label: 'Phone No.', placeholder: '', keyboardType: TextInputType.phone, screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(height: screenHeight * 0.03),

            // Route Info Title
            Text(
              'Route Info',
              style: TextStyle(
                fontSize: screenHeight * 0.03,
                color: const Color(0xFFEDAD03).withOpacity(0.94),
                fontFamily: 'Lexend',
              ),
            ),
            SizedBox(height: screenHeight * 0.015),

            // Route Info Fields
            _buildFormField(label: 'Default Route', placeholder: '', screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(height: screenHeight * 0.015),
            _buildFormField(label: 'Default Pickup Point', placeholder: '', screenWidth: screenWidth, screenHeight: screenHeight),

            Spacer(),

            // Edit Route Info Button
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: screenHeight * 0.05,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Edit route info?',
                    style: TextStyle(
                      color: const Color(0xFFEDAD03).withOpacity(0.94),
                      fontWeight: FontWeight.w400,
                      fontSize: screenHeight * 0.018,
                    ),
                  ),
                ),
              ),
            ),

            // Logout Button
            Center(
              child: SizedBox(
                height: screenHeight * 0.06,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'LOG OUT',
                    style: TextStyle(
                      fontSize: screenHeight * 0.025,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFEDAD03),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormField({
    required String label,
    required String placeholder,
    TextInputType? keyboardType,
    required double screenWidth,
    required double screenHeight,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Form label
        Text(
          label,
          style: TextStyle(
            fontSize: screenHeight * 0.02, // Font size proportional to screen height
            fontWeight: FontWeight.w500,
            color: const Color(0xFF3C3C3C),
            fontFamily: 'Lexend',
          ),
        ),
        SizedBox(height: screenHeight * 0.01),

        // TextFormField container
        Container(
          width: screenWidth * 0.9, // Proportional width
          height: screenHeight * 0.07, // Proportional height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: const Color(0xFFEDAD03),
              width: 2,
            ),
          ),
          child: TextFormField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              hintText: placeholder,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            style: TextStyle(
              fontSize: screenHeight * 0.02,
              color: const Color(0xFF3C3C3C),
            ),
          ),
        ),
      ],
    );
  }
}
