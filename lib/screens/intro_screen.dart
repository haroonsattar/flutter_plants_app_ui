import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_plants_app_ui/frontend/frontend.dart';
import 'package:flutter_plants_app_ui/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {

  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned.fill(
                top: -250,
                left: -10,
                right: -10,
                child: Image.asset('assets/images/dgh.png', fit: BoxFit.contain,
                )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 260,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text("Green\nHome🌿", style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Let's make the world green again", style: TextStyle(fontSize: 16,),),
                      Spacer(),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        color: FrontendCon.kbtnColor,
                        padding: EdgeInsets.symmetric(horizontal: 22,vertical: 16),
                        child: Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
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
