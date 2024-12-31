import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // The map interface (could be a widget like GoogleMap or a static image)
          // Placeholder for map, as an example
          Positioned.fill(
            child: Container(
              color: Colors.grey[200], // Placeholder for the map background
            ),
          ),

          // First Image - Positioned at the top left, wrapped with GestureDetector for navigation
          Positioned(
            top: 20,
            left: 20,
            child: GestureDetector(
              onTap: () {
                // Navigate to the '/menu' route when the image is tapped
                Navigator.pushNamed(context, '/menu');
              },
              child: Image.network(
                'https://cdn.builder.io/api/v1/image/assets/66d8cd9063924a40b5ff660085a6d390/02573d01ef6bab9b639da75aaaec224677ae7154aa66b0b15628568d37d45179?apiKey=519c90f9460a412a927c33369783438a&',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const CircularProgressIndicator();
                },
                semanticLabel: 'First logo image',
              ),
            ),
          ),

          // Second Image - Positioned at the top right
          Positioned(
            top: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Image.network(
                'https://cdn.builder.io/api/v1/image/assets/66d8cd9063924a40b5ff660085a6d390/8564dc8a5d17ba65674a0e1f7421acdd155df8b5e9bc1e9c81335476afa0e667?apiKey=519c90f9460a412a927c33369783438a&',
                width: 38,
                height: 42,
                fit: BoxFit.contain,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const CircularProgressIndicator();
                },
                semanticLabel: 'Second logo image',
              ),
            ),
          ),

          // Centered Content (if needed, this is where you could add the central content on the screen)
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8, // For example, to make it 80% of the screen width
              height: MediaQuery.of(context).size.height * 0.8, // 80% of screen height
              color: Colors.blue.withOpacity(0.1), // Just a background to see the layout
              child: Center(child: Text('Your content goes here')),
            ),
          ),
        ],
      ),
    );
  }
}
