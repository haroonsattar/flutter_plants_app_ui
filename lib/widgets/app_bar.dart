import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Text('Discover', style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
          Spacer(),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),fit: BoxFit.cover
                )
            ),
          ),
        ],
      ),
    );
  }
}