import 'package:flutter/material.dart';

class TrackInfoScreen extends StatelessWidget {
  const TrackInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double contentWidth = constraints.maxWidth > 480 ? 480 : constraints.maxWidth;

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + constraints.maxHeight * 0.1),
                Semantics(
                  label: 'Decorative placeholder for tracking illustration',
                  child: Container(
                    width: contentWidth,
                    height: constraints.maxHeight * 0.35,
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  '"Track Effortlessly, Stay Informed"',
                  style: TextStyle(
                    fontSize: constraints.maxWidth * 0.06,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  semanticsLabel: 'Track Effortlessly, Stay Informed heading',
                ),
                const SizedBox(height: 38),
                Expanded(
                  child: Text(
                    'Get notified of delays, check bus availability, and track your journey seamlessly, all in one place.',
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.05,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.justify,
                    semanticsLabel: 'Feature description',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.05), // Lift the image
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/nextScreen'); // Replace '/nextScreen' with your route
                      },
                      child: Image.network(
                        'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/arrow%20ill.png',
                        width: constraints.maxWidth * 0.2,
                        semanticLabel: 'Navigate to another page',
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const CircularProgressIndicator();
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
