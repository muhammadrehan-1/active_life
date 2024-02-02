import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Text(
            'Hi, David',
            style: const TextStyle().copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 32,
              color: Colors.black,
              letterSpacing: 0.40,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            'Recently Added',
            style: const TextStyle().copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black,
              letterSpacing: 0.40,
            ),
          ),
        ],
      ),
    );
  }
}
