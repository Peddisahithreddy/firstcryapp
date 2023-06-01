import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class img1 extends StatelessWidget {
  const img1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 150,
        height: 150,
        color: Colors.blue[200],
        child: Padding(
          padding:
          const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70,
                color: Colors.white,
                height: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assests/21.jpg'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'FLASH SALE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 5,
                          ),
                        ),
                        Text(
                          '3 PM - 6 PM',
                          style: TextStyle(
                              fontSize: 5,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'TOYS',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white),
              ),
              Text(
                'PRICE CRASH',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(height: 10,),
              Container(color: Colors.white,height: 14,width: 80,
                  child: ElevatedButton(onPressed: (){},child: Text('Know More',style: TextStyle(fontSize: 5,color: Colors.black),), )),],

          ),
        ),
      ),
    );
  }
}
