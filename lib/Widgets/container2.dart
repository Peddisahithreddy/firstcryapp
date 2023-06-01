import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  const Container2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent[100],
      width: 300,
      height: 95,
      child: Row(children: [
        Container(
            width: 120,
            height: 100,
            child: Image.asset('assests/28.png')),
        const Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(children: [
            Text('Shop for AED 250 & Get',style: TextStyle(fontSize: 10,color: Colors.black),),
            SizedBox(height: 5,),
            Text('Extra 15% Off',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 5,),
            Row(
              children: [
                Text('Code:',style: TextStyle(fontSize: 10,color: Colors.black),),
                Text('PAMPERS15',style: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold),)
              ],
            )
          ],),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_right),
            Padding(
              padding:  EdgeInsets.only(top: 40),
              child: Text('T&C Apply',style: TextStyle(fontSize: 3,color: Colors.black),),
            )

          ],)

      ],),
    );
  }
}
