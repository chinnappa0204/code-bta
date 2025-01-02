import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                  header: true,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 65),
                    child: Text(
                      'WELCOME TO,',
                      style: TextStyle(
                        fontSize: constraints.maxWidth * 0.05,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.73),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 44, top: 5),
                  child: Text(
                    'YELLI ULLIYA',
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.09,
                      fontFamily: 'Lexend',
                      color: const Color(0xFFEDAD03).withOpacity(0.77),
                    ),
                  ),
                ),
                Semantics(
                  label: 'Decorative image placeholder',
                  child: Container(
                    margin: const EdgeInsets.only(top: 63),
                    width: contentWidth,
                    height: constraints.maxHeight * 0.35,
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '"Yelli Ulliya? - Where Are You?"',
                  style: TextStyle(
                    fontSize: constraints.maxWidth * 0.06,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: constraints.maxWidth * 0.05,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                      children: const [
                        TextSpan(
                          text: 'Yelli Ulliya ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text:
                          'means "Where Are You" in Kodava Thakk. This app is dedicated to the students of CIT, designed to make every journey easier, safer and more predictable.\n\nYelli Ulliya - your compass to campus.\n\n',
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      // Replace this with your destination navigation logic
                      Navigator.pushNamed(context, '/ill1');
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
