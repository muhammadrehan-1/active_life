import 'package:active_life/authentication/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';
import '../widgets/button_container.dart';
import 'otp_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  'Create your account',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.archivoBlack().copyWith(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.40,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.045,
                      width: MediaQuery.of(context).size.width * 0.41,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: lightGrey,
                          filled: true,
                          contentPadding: const EdgeInsets.only(left: 15, right: 5),
                          hintText: 'First Name',
                          hintStyle: const TextStyle().copyWith(
                            color: grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.045,
                      width: MediaQuery.of(context).size.width * 0.41,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: lightGrey,
                          filled: true,
                          contentPadding: const EdgeInsets.only(left: 15, right: 5),
                          hintText: 'Last Name',
                          hintStyle: const TextStyle().copyWith(
                            color: grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: lightGrey,
                      filled: true,
                      contentPadding: const EdgeInsets.only(left: 15, right: 5),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(11),
                        child: SvgPicture.asset('assets/icons/phone.svg'),
                      ),
                      hintText: 'Phone No',
                      hintStyle: const TextStyle().copyWith(
                        color: grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: lightGrey,
                      filled: true,
                      contentPadding: const EdgeInsets.only(left: 15, right: 5),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(11),
                        child: SvgPicture.asset('assets/icons/email.svg'),
                      ),
                      hintText: 'Email',
                      hintStyle: const TextStyle().copyWith(
                        color: grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: lightGrey,
                      filled: true,
                      contentPadding: const EdgeInsets.only(left: 15, right: 5),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(11),
                        child: SvgPicture.asset('assets/icons/password.svg'),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(11),
                        child: SvgPicture.asset('assets/icons/closed_eye.svg'),
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle().copyWith(
                        color: grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: lightGrey,
                      filled: true,
                      contentPadding: const EdgeInsets.only(left: 15, right: 5),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(11),
                        child: SvgPicture.asset('assets/icons/password.svg'),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(11),
                        child: SvgPicture.asset('assets/icons/closed_eye.svg'),
                      ),
                      hintText: 'Confirm Password',
                      hintStyle: const TextStyle().copyWith(
                        color: grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const OtpScreen();
                      }));

                    },
                    child: const ButtonContainer(textOfButton: 'Sign up')),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: const TextStyle().copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(builder: (context) {
                          return const SignInScreen();
                        }));
                      },
                      child: Text(
                        'Sign in',
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
          ),
        ),
      ),
    );
  }
}
