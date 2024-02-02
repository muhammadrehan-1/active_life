import 'package:active_life/widgets/button_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';
import 'main_screen.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool isCard = false;
  bool isPayPal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Select Payment Method',
          style: const TextStyle().copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 24,
            letterSpacing: 0.40,
          ),
        ),
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isCard = !isCard;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.019,
                            width: MediaQuery.of(context).size.width * 0.04,
                            decoration: ShapeDecoration(
                              color: isCard == true ? yellowColor : null,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: yellowColor),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: isCard == true
                                ? const Icon(
                                    Icons.done,
                                    size: 10,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Text(
                          'Credit / Debit Card',
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
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
                          child: SvgPicture.asset('assets/icons/card.svg'),
                        ),
                        hintText: '1234 5678 9123 4567',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.045,
                        width: MediaQuery.of(context).size.width * 0.37,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: lightGrey,
                            filled: true,
                            contentPadding:
                                const EdgeInsets.only(left: 15, right: 5),
                            hintText: 'Exp Date',
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
                        height: MediaQuery.of(context).size.height * 0.045,
                        width: MediaQuery.of(context).size.width * 0.37,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: lightGrey,
                            filled: true,
                            contentPadding:
                                const EdgeInsets.only(left: 15, right: 5),
                            hintText: 'CVV',
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
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isPayPal = !isPayPal;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.019,
                            width: MediaQuery.of(context).size.width * 0.04,
                            decoration: ShapeDecoration(
                              color: isPayPal == true ? yellowColor : null,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: yellowColor),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: isPayPal == true
                                ? const Icon(
                                    Icons.done,
                                    size: 10,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Text(
                          'PayPal',
                          style: const TextStyle().copyWith(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
             Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const MainScreen();
                        }),);
                      },
                      child: const ButtonContainer(textOfButton: 'Confirm Payment')),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
