import 'package:flutter/material.dart';

class AccurateLocationScreen extends StatelessWidget {
  const AccurateLocationScreen({super.key});

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
                  label: 'Location tracking illustration',
                  child: Container(
                    width: contentWidth,
                    height: constraints.maxHeight * 0.35,
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                const SizedBox(height: 23),
                Text(
                  'Accurate Location and Arrival Times',
                  style: TextStyle(
                    fontSize: constraints.maxWidth * 0.06,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  semanticsLabel: 'Feature heading: Accurate Location and Arrival Times',
                ),
                const SizedBox(height: 33),
                Expanded(
                  child: Text(
                    'Know exactly where your bus is, along with its estimated arrival time (ETA), so you can plan your schedule without unnecessary waiting.',
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.05,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.justify,
                    semanticsLabel: 'Feature description explaining real-time bus tracking and ETA functionality',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.05), // Lift the image
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/ill3'); // Replace '/ill3' with your route
                      },
                      child: Image.network(
                        'https://raw.githubusercontent.com/chinnappa0204/images---bta/refs/heads/main/arrow%20ill.png',
                        width: constraints.maxWidth * 0.2,
                        semanticLabel: 'Navigation indicator',
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
