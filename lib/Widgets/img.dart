import 'package:flutter/material.dart';

class img extends StatelessWidget {
  const img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 150,
        height: 150,
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Container(
              child: Image.asset('assests/1.jpg'),
            ),

            Container(
              child: Image.asset('assests/2.jpg'),
            ),

            Container(
              child: Image.asset('assests/3.jpg'),
            ),

            Container(
              child: Image.asset('assests/4.jpg'),
            ),

          ],
        ),
      ),
    );
  }
}
