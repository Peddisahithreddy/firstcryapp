import 'package:flutter/material.dart';

class WidgetCont extends StatefulWidget {
  const WidgetCont({Key? key}) : super(key: key);

  @override
  State<WidgetCont> createState() => _WidgetContState();
}

class _WidgetContState extends State<WidgetCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: 300,
      height: 95,
      color: Colors.black,
      child: Row(

        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: Column(
              children: [
                Container(
                  width: 73,
                  height: 50,
                  color: Colors.white,
                  child: const Padding(
                    padding:  EdgeInsets.only(top: 10, left: 4),
                    child: Text(
                      'LIVE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'WATCH NOW',
                          style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          ),

          const Padding(
            padding:  EdgeInsets.only(top: 20.0,left: 10,right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('dyson',style: TextStyle(fontSize: 14,color: Colors.white),),
                    SizedBox(width: 3,),
                    Text('v12',style: TextStyle(fontSize: 14,color: Colors.green),)
                  ],
                ),
                SizedBox(height: 5,),
                Text('Something',style: TextStyle(fontSize: 10,color: Colors.white),),
                SizedBox(height: 5,),
                Text('Something',style: TextStyle(fontSize: 10,color: Colors.white),)
              ],
            ),
          ),
          Container(
              width: 90,
              height: 1000,
              child:Image.asset('assests/31.jpg')),

        ],
      ),


    );
  }
}
