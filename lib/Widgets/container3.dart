import 'package:flutter/material.dart';

class Container3 extends StatelessWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      width: double.infinity,
      // height: 400,
      child:
      Column(children: [
        Text('THE SUMMER COLLECTION',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.black),),
        Text('Brighten Up Their Closet',style: TextStyle(fontSize: 22,color: Colors.black),),
        Column(children: [

          Container(
            child:
            Image.asset('assests/11.jpg'),),

          Container(
            child:
            Image.asset('assests/12.jpg'),),
          Container(
            child:
            Image.asset('assests/13.jpg'),),
          Container(
            child:
            Image.asset('assests/14.jpg'),),

        ],)
      ],),
    );
  }
}
