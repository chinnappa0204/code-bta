import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double contentWidth = constraints.maxWidth > 370 ? 370 : constraints.maxWidth;

          return Container(
            padding: const EdgeInsets.fromLTRB(21, 0, 21, 26),
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Semantics(
                  label: 'Decorative image placeholder',
                  child: Container(
                    margin: EdgeInsets.only(top: constraints.maxHeight * 0.15),
                    width: contentWidth,
                    height: constraints.maxHeight * 0.35,
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Stay connected with CIT Buses',
                  style: TextStyle(
                    fontSize: constraints.maxWidth * 0.06,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                  semanticsLabel: 'Main heading: Stay connected with CIT Buses',
                ),
                const SizedBox(height: 38),
                Expanded(
                  child: Text(
                    'Track your college bus in real-time, know its exact location, and never miss it again!\nNaada Nade is here to keep you updated every step of the way.',
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.05,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.justify,
                    semanticsLabel: 'Description of bus tracking features',
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/ill2'); // Replace '/nextScreen' with your route
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
              ],
            ),
          );
        },
      ),
    );
  }
}
