import 'package:flutter/material.dart';

import '../pages/homeScreen.dart';


class RowItemsWidget extends StatelessWidget {
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
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Row(
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
        ),
        actions: [
          Container(
            width: 150,
            child: Row(
              children: [

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
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                //height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Stack(
                      //alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 70),
                          //height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF475269),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset('assests/41.png',
                            height: 150, width: 150, fit: BoxFit.contain)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PUMA Fun racer AC PS Pristine - Sunset Pink',
                            style: TextStyle(
                                color: Color(0xFF475269),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'AED',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                              Text(
                                '104.21',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              Text(
                                '169',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                              Text(
                                '(upto 50% off)',
                                style:
                                TextStyle(color: Colors.red, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //2
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                //height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Stack(
                      //alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 70),
                          //height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF475269),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset('assests/42.png',
                            height: 150, width: 150, fit: BoxFit.contain)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PUMA Fun racer AC PS Pristine - Sunset Pink',
                            style: TextStyle(
                                color: Color(0xFF475269),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'AED',
                                style:
                                TextStyle(color: Colors.black, fontSize: 6),
                              ),
                              Text(
                                '104.21',
                                style:
                                TextStyle(color: Colors.black, fontSize: 8),
                              ),
                              Text(
                                '169',
                                style:
                                TextStyle(color: Colors.black, fontSize: 6),
                              ),
                              Text(
                                '(upto 50% off)',
                                style:
                                TextStyle(color: Colors.red, fontSize: 8),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //3
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                //height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Stack(
                      //alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 70),
                          //height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF475269),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset('assests/43.png',
                            height: 150, width: 150, fit: BoxFit.contain)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PUMA Fun racer AC PS Pristine - Sunset Pink',
                            style: TextStyle(
                                color: Color(0xFF475269),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'AED',
                                style:
                                TextStyle(color: Colors.black, fontSize: 6),
                              ),
                              Text(
                                '104.21',
                                style:
                                TextStyle(color: Colors.black, fontSize: 8),
                              ),
                              Text(
                                '169',
                                style:
                                TextStyle(color: Colors.black, fontSize: 6),
                              ),
                              Text(
                                '(upto 50% off)',
                                style:
                                TextStyle(color: Colors.red, fontSize: 8),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                //height: 100,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    Stack(
                      //alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 70),
                          //height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF475269),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Image.asset('assests/44.png',
                            height: 150, width: 150, fit: BoxFit.contain)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PUMA Fun racer AC PS Pristine - Sunset Pink',
                            style: TextStyle(
                                color: Color(0xFF475269),
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'AED',
                                style:
                                TextStyle(color: Colors.black, fontSize: 6),
                              ),
                              Text(
                                '104.21',
                                style:
                                TextStyle(color: Colors.black, fontSize: 8),
                              ),
                              Text(
                                '169',
                                style:
                                TextStyle(color: Colors.black, fontSize: 6),
                              ),
                              Text(
                                '(upto 50% off)',
                                style:
                                TextStyle(color: Colors.red, fontSize: 8),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text('Back'))
            ],
          ),
        ),
      ),
    );
  }
}
