import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColorBlack,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Image.asset(
                'assets/images/circle.png',
                color: kGreen,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome to WhatsApp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Read our ',
                      style: TextStyle(
                        color: Color(0xFF8696A0),
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color: Color(0xFF53BDEB),
                          ),
                        ),
                        TextSpan(
                          text: 'Tap "Agree and Continue" to accept the ',
                        ),
                        TextSpan(
                          text: 'Terms of Services.',
                          style: TextStyle(
                            color: Color(0xFF53BDEB),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                  width: MediaQuery.of(context).size.width - 100,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Click1');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00A884),
                      foregroundColor: const Color(0xFF111B21),
                      splashFactory: NoSplash.splashFactory,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'AGREE AND CONTINUE',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Material(
                  color: const Color(0xFF182229),
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: const Color(0xFF09141A),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.language,
                            color: kGreen,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('English'),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: kGreen,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
