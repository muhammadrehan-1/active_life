import 'package:active_life/main_screens/get_premium_membership_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';
import '../widgets/button_container.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Verify Email',
          style: const TextStyle().copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 24,
            letterSpacing: 0.40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  'Code has been send to user@example.com',
                  style: const TextStyle().copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.40,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width,
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 75,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              fillColor: lightGrey,
                              filled: true,
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
                            onSaved: (pin1) {},
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: const TextStyle().copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 0.40,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 75,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              fillColor: lightGrey,
                              filled: true,
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
                            onSaved: (pin2) {},
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: const TextStyle().copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 0.40,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 75,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              fillColor: lightGrey,
                              filled: true,
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
                            onSaved: (pin3) {},
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: const TextStyle().copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 0.40,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 75,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              fillColor: lightGrey,
                              filled: true,
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
                            onSaved: (pin4) {},
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            style: const TextStyle().copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 20,
                              letterSpacing: 0.40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width,
                ),
               Text.rich(
                 TextSpan(
                   children: [
                     TextSpan(
                       text: 'Resend code in ',
                       style: const TextStyle().copyWith(
                         fontWeight: FontWeight.w400,
                         color: Colors.black,
                         fontSize: 14,
                         letterSpacing: 0.40,
                       ),
                     ),
                     TextSpan(
                       text: '56',
                       style: const TextStyle().copyWith(
                         fontWeight: FontWeight.w400,
                         color: yellowColor,
                         fontSize: 14,
                         letterSpacing: 0.40,
                       ),
                     ),
                     TextSpan(
                       text: 's',
                       style: const TextStyle().copyWith(
                         fontWeight: FontWeight.w400,
                         color: Colors.black,
                         fontSize: 14,
                         letterSpacing: 0.40,
                       ),
                     ),
                   ]
                 )
               ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const GetPremiumMemberShipScreen();
                      }));
                    },
                    child: const ButtonContainer(textOfButton: 'Verify')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
