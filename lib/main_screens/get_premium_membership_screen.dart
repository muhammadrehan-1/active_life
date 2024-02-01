import 'package:active_life/main_screens/home_screen.dart';
import 'package:active_life/main_screens/payment_method_screen.dart';
import 'package:active_life/widgets/button_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class GetPremiumMemberShipScreen extends StatelessWidget {
  const GetPremiumMemberShipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width,
            ),
            Text(
              'Get Premium Membership',
              textAlign: TextAlign.center,
              style: GoogleFonts.archivoBlack().copyWith(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.40,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/tym_gold.png'),)
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return PaymentMethodScreen();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                decoration: ShapeDecoration(
                  color: yellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: purpleShadow,
                      blurRadius: 30,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Text(
                  '\$ 12.00 / Month (Billed Monthly)',
                  style: const TextStyle().copyWith(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return PaymentMethodScreen();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                decoration: ShapeDecoration(
                  color: yellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: purpleShadow,
                      blurRadius: 30,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Text(
                  '\$ 10.00 / Month (Billed Annually)',
                  style: const TextStyle().copyWith(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
              width: MediaQuery.of(context).size.width,
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return HomeScreen();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                decoration: ShapeDecoration(
                  color: buttonLightGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: purpleShadow,
                      blurRadius: 30,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Text(
                  'Use App For Free',
                  style: const TextStyle().copyWith(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
