import 'package:flutter/material.dart';

class BottomPlant extends StatefulWidget {

  final String ImagePath;
  final String plantName;
  final String plantprice;

  const BottomPlant({super.key, required this.ImagePath, required this.plantName, required this.plantprice});

  @override
  State<BottomPlant> createState() => _BottomPlantState();
  }

class _BottomPlantState extends State<BottomPlant> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        height: 170,
        child: Stack(
          children: [
            Positioned(
                right: 15,
                top: 15,
                child: GestureDetector(
                  onTap: (){
                    setState((){
                      isSelected=!isSelected;
                    });
                  },

                child: isSelected?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_outline))),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset(widget.ImagePath,),),
                    Text(widget.plantName,style: TextStyle(fontSize: 18),),
                    Text('\$ ${widget.plantprice}',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}