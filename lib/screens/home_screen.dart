import 'package:flutter/material.dart';
import 'package:flutter_plants_app_ui/frontend/frontend.dart';
import 'package:flutter_plants_app_ui/widgets/app_bar.dart';
import 'package:flutter_plants_app_ui/widgets/bottom_plant.dart';
import 'package:flutter_plants_app_ui/widgets/sale_container.dart';
import 'package:flutter_plants_app_ui/widgets/search_input.dart';

import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FrontendCon.kscaffoldcolor,
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(),
            SizedBox(
              height: 15,
            ),
            SearchInput(),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 135,
              width: double.infinity,

              child: ListView.builder(
                itemCount: plant.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 6,left: 6),
                  height: 130,
                  width: 120,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(plant[index].Imagepath,height: 50,width: 50,fit: BoxFit.cover,),
                      Text(plant[index].title),
                    ],
                  )
                );
              }),
            ),
            Expanded(child: Container(
              child: Stack(
                children: [
                  Expanded(child: ListView(children: [
                    SaleContainer(),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          BottomPlant(ImagePath: 'assets/images/alovera.png',
                          plantName: 'Aloe Vera',
                              plantprice: '60',
                          ),
                        SizedBox(width: 15,),
                          BottomPlant(ImagePath: 'assets/images/bonsaai.png',
                            plantName: 'Bonsai',
                            plantprice: '60',),

                      ],
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          BottomPlant(ImagePath: 'assets/images/bottom.png',
                            plantName: 'Jade plant',
                            plantprice: '60',
                          ),
                          SizedBox(width: 15,),
                          BottomPlant(ImagePath: 'assets/images/cactus.png',
                            plantName: 'Cactus',
                            plantprice: '60',),

                        ],
                      ),
                    ),
                  ],)),
                  Align(
                      alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: FrontendCon.kbtnColor,
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.home,color: Colors.white,),
                        Icon(Icons.favorite_outline,color: Colors.white,),
                        Icon(Icons.shopping_cart,color: Colors.white,),
                        Icon(Icons.settings_outlined,color: Colors.white,),
                      ],
                    ),
                  )
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

}
