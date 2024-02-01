import 'package:active_life/authentication/otp_screen.dart';
import 'package:active_life/authentication/sign_up_screen.dart';
import 'package:active_life/widgets/button_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isRemember = false;
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
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  'Log in to your account',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.archivoBlack().copyWith(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.40,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: lightGrey,
                            filled: true,
                            contentPadding:
                                const EdgeInsets.only(left: 15, right: 5),
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
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: lightGrey,
                            filled: true,
                            contentPadding:
                                const EdgeInsets.only(left: 15, right: 5),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(11),
                              child:
                                  SvgPicture.asset('assets/icons/password.svg'),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(11),
                              child:
                                  SvgPicture.asset('assets/icons/closed_eye.svg'),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.007,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isRemember = !isRemember;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height:
                                    MediaQuery.of(context).size.height * 0.019,
                                width: MediaQuery.of(context).size.width * 0.04,
                                decoration: ShapeDecoration(
                                  color: isRemember == true ? yellowColor : null,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: yellowColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: isRemember == true
                                    ? const Icon(
                                        Icons.done,
                                        size: 10,
                                      )
                                    : null,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text(
                              'Remember me',
                              style: const TextStyle().copyWith(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.14,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Forgot the password?',
                        textAlign: TextAlign.right,
                        style: const TextStyle().copyWith(
                          color: yellowColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.13,
                ),
                InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const OtpScreen();
                      }));
                    },
                    child: const ButtonContainer(textOfButton: 'Sign in')),
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const SignUpScreen();
                        }));
                      },
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
          ),
        ),
      ),
    );
  }
}
