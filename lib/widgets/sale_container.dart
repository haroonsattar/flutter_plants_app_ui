import 'package:flutter/material.dart';

import '../frontend/frontend.dart';

class SaleContainer extends StatelessWidget {
  const SaleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: FrontendCon.kcontainerColor,
          borderRadius: BorderRadius.circular(25)),
      height: 140,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              right: -50,
              bottom: -22,
              child: Image.asset('assets/images/cover.png')),
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get',
                  style: TextStyle(fontSize: 18),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '20% ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black)),
                  TextSpan(text: 'off', style: TextStyle(color: Colors.black)),
                ])),
                Text(
                  'For Today',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
