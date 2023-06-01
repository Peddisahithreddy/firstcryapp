import 'package:firstcry/pages/product.dart';
import 'package:flutter/material.dart';

import '../Widgets/Container.dart';
import '../Widgets/container2.dart';
import '../Widgets/container3.dart';
import '../Widgets/img.dart';
import '../Widgets/img1.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //HomeScreen({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();
  String? selectedValue;

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Boy"),value: "Boy"),
      DropdownMenuItem(child: Text("Girl"),value: "Girl"),
      DropdownMenuItem(child: Text("Toys"),value: "Toys"),
      DropdownMenuItem(child: Text("All Categories"),value: "All Categories"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 60,
                height: 40,
                child: Image.asset(
                  'assests/download.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 5,),
              Container(
                width: 60,
                child: TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                      hintText: 'Search ',
                      hintStyle: TextStyle(color: Colors.white24),
                      border: InputBorder.none),
                  onChanged: (value) {
                    //perform the functionality here
                  },
                ),
              ),

            ],
          ),
          actions: [
            Container(
              width: 230,
              child: Row(
                children: [

                  TextButton(onPressed: () {}, child: Text('Track Order')),
                  TextButton(onPressed: () {}, child: Text('Shortlist')),
                  TextButton(onPressed: () {}, child: Text('Cart'))
                ],
              ),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purple.shade300],
                //begin: Alignment.centerLeft,
                //end: Alignment.topRight
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton<String>(
                      hint: Text('All categories'),
                      value: selectedValue,
                      onChanged: (String? newValue){
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems
                  ),
                  TextButton(onPressed: (){}, child: Text('MOMS',style: TextStyle(color: Colors.white),)),
                  TextButton(onPressed: (){}, child: Text('BEAUTY')),
                  TextButton(onPressed: (){}, child: Text('OUTDOOR')),
                ],

              ),
              Row(
                children: [
                  img(),
                  img1(),

                ],
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>RowItemsWidget()));}, child: Text('Product')),

              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 20,
                        width: 30,
                        child: Image.asset('assests/22.png')),
                    Container(
                      width: 1,
                      color: Colors.black,
                    ),
                    Container(
                        height: 20,
                        width: 30,
                        child: Image.asset('assests/23.png')),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const WidgetCont(),
              const SizedBox(
                height: 10,
              ),
              const Container2(),
              const SizedBox(
                height: 10,
              ),
              const Container3(),

            ],

          ),
        ),
      ),
    );
  }
}
