import 'package:active_life/authentication/sign_in_screen.dart';
import 'package:active_life/widgets/button_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/welcome_screen_pic.png'),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(44),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Text(
            'Let the Journey Begin',
            textAlign: TextAlign.center,
            style: GoogleFonts.archivoBlack().copyWith(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.40,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignInScreen();
                    },
                  ),
                );
              },
              child:
                  const ButtonContainer(textOfButton: 'Sign in with password'),),
         const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Don’t have account?',
                style: const TextStyle().copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.14,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign up',
                  style: const TextStyle().copyWith(
                    color: yellowColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
