

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HealthScreen extends StatefulWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  _HealthScreenState createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          actions: [
            Padding(
                padding: EdgeInsets.fromLTRB(10,10,20,10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Icon(Icons.location_on_rounded,size: 25,color: Colors.black,),
                Text('Mumbai',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black,),),
                Icon(Icons.arrow_drop_down,size: 35,color: Colors.black,),
                SizedBox(width: screenSize.width * 0.45,),
                Icon(Icons.search,size: 35,color: Colors.black,),
                ],

              ),
                  )],),
        body: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenSize.height * 0.03,),
            Container(
              height: 250,
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: [
                      Card(
                        elevation: 2,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          'assets/images/p1.jpg',
                          fit: BoxFit.fill,
                          height: 150.0,
                          width: 150.0,
                        ),

                        shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Colors.white70,
                            width: 1),
                        borderRadius:
                        BorderRadius.circular(15),
                      ),),
                      Text('Online one to one ', style: TextStyle(fontSize: 16),),
                      Text('Training',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
                    ],
                  ),
                  Container(
                      child: Column(
                      children: [
                        Card(
                          elevation: 2,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/p2.jpg',
                            height: 150.0,
                            width: 150.0,
                             fit: BoxFit.fill,
                          ),

                          shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.white70,
                              width: 1),
                          borderRadius:
                          BorderRadius.circular(15),
                        ),),
                        Text('All-in-one fitness ', style: TextStyle(fontSize: 16),),
                        Text('membership',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
                      ],
                    ),
                     ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 2,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/p3.jpg',
                            fit: BoxFit.fill,
                            height: 150.0,
                            width: 150.0,
                          ),

                          shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.white70,
                              width: 1),
                          borderRadius:
                          BorderRadius.circular(15),
                        ),),
                        Text('Purchase at the ', style: TextStyle(fontSize: 16),),
                        Text('Lowest Prices',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
                      ],
                    ),
                     ),
                  Container(
                     child: Column(
                      children: [
                        Card(
                          elevation: 2,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/p4.png',
                            height: 150.0,
                            width: 150.0,
                            fit: BoxFit.fill,
                          ),

                          shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.white70,
                              width: 1),
                          borderRadius:
                          BorderRadius.circular(15),
                        ),),
                        Text('Best-in-class gyms', style: TextStyle(fontSize: 16),),
                        Text('& fitness studios',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
                      ],
                    ),
                     ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 2,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/p5.jpg',
                            height: 150.0,
                            width: 150.0,
                            fit: BoxFit.fill,
                          ),

                          shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.white70,
                              width: 1),
                          borderRadius:
                          BorderRadius.circular(15),
                        ),),
                        Text('Book Gym & group ', style: TextStyle(fontSize: 16),),
                        Text('Workout classes',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
                      ],
                    ),
                     ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 2,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/p6.jpg',
                            fit: BoxFit.fill,
                            height: 150.0,
                            width: 150.0,
                          ),

                          shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.white70,
                              width: 1),
                          borderRadius:
                          BorderRadius.circular(15),
                        ),),
                        Text('Interactive online ', style: TextStyle(fontSize: 16),),
                        Text('group classes',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)
                      ],
                    ),
                     ),

                ],
              ),
            ),


            Container(
              height: 250,
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: [
                      Card(
                        elevation: 2,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.network(
                          'https://media.istockphoto.com/photos/cheerful-fit-couple-on-white-background-picture-id1287910461?b=1&k=20&m=1287910461&s=170667a&w=0&h=A4HaJr7JSonN79ACVIjM-dP1WEHocwfPnKR95C0PzMQ=',
                          fit: BoxFit.fill,
                          height: 200.0,
                          width: 300.0,
                        ),

                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.white70,
                              width: 1),
                          borderRadius:
                          BorderRadius.circular(15),
                        ),),

                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 2,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            'https://images.unsplash.com/photo-1526506118085-60ce8714f8c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z3ltJTIwYW5kJTIwZXhlcmNpc2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                            height: 200.0,
                            width: 300.0,
                            fit: BoxFit.fill,
                          ),

                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Colors.white70,
                                width: 1),
                            borderRadius:
                            BorderRadius.circular(15),
                          ),),

                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 2,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            'https://images.unsplash.com/photo-1517130038641-a774d04afb3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGd5bSUyMGFuZCUyMGV4ZXJjaXNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                            fit: BoxFit.fill,
                            height: 200.0,
                            width: 300.0,
                          ),

                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Colors.white70,
                                width: 1),
                            borderRadius:
                            BorderRadius.circular(15),
                          ),),

                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 2,
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGd5bSUyMGFuZCUyMGV4ZXJjaXNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                            height: 200.0,
                            width: 300.0,
                            fit: BoxFit.fill,
                          ),

                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Colors.white70,
                                width: 1),
                            borderRadius:
                            BorderRadius.circular(15),
                          ),),

                      ],
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15.0,right: 20,bottom: 10),
              child: Row(
                  children: const [
                    Text('Discover & Book' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Spacer(),
                    Text('View All' ,style: TextStyle(color: Colors.redAccent,fontSize: 18),),
                  ],
                ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,10,5),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(5,5,2,5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),),
                      height: 100,
                      child:Image.network(
                          'https://images.pexels.com/photos/949126/pexels-photo-949126.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                           fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                     width: 8,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(2,5,5,5),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),),
                      child:Image.network(
                        'https://media.istockphoto.com/photos/business-team-connect-pieces-of-gears-teamwork-partnership-and-picture-id1203832818?s=612x612',
                        fit: BoxFit.cover,
                    ),
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,10,5),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(5,5,2,5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),),
                      height: 100,
                      child:Image.network(
                        'https://images.pexels.com/photos/863926/pexels-photo-863926.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(2,5,5,5),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),),
                      child:Image.network(
                        'https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        fit: BoxFit.cover,
                      ),
                    ),),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(2,5,5,5),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),),
                      child:Image.network(
                        'https://images.pexels.com/photos/7500315/pexels-photo-7500315.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        fit: BoxFit.cover,
                      ),
                    ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,5,10,5),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(5,5,2,5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),),
                      height: 100,
                      child:Image.network(
                        'https://images.pexels.com/photos/7045635/pexels-photo-7045635.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(2,5,5,5),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),),
                      child:Image.network(
                        'https://images.pexels.com/photos/3758151/pexels-photo-3758151.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        fit: BoxFit.cover,
                      ),
                    ),),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:EdgeInsets.fromLTRB(2,5,5,5),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),),
                      child:Image.network(
                        'https://images.pexels.com/photos/1415810/pexels-photo-1415810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        fit: BoxFit.cover,
                      ),
                    ),)
                ],
              ),
            ),

            SizedBox(height: screenSize.height * 0.03,),

            Text('   Stay fit @home' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(height: screenSize.height * 0.03,),
            Card(margin: EdgeInsets.all(10),
              elevation: 1,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://images.pexels.com/photos/414029/pexels-photo-414029.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                fit: BoxFit.fill,
                height: 150.0,
                width: 380.0,
              ),

              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Colors.white70,
                    width: 1),
                borderRadius:
                BorderRadius.circular(15),
              ),),
            SizedBox(height: screenSize.height * 0.01,),
            Row(
              children: [
                Card(
                  margin: EdgeInsets.only(left: 10),
                  elevation: 2,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    'https://images.pexels.com/photos/7352853/pexels-photo-7352853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    fit: BoxFit.fill,
                    height: 150.0,
                    width: 180.0,
                  ),

                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: Colors.white70,
                        width: 1),
                    borderRadius:
                    BorderRadius.circular(15),
                  ),),
                Card(
                  margin: EdgeInsets.only(right: 5,left: 10),
                  elevation: 2,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    'https://images.pexels.com/photos/7530368/pexels-photo-7530368.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    fit: BoxFit.fill,
                    height: 150.0,
                    width: 180.0,
                  ),

                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: Colors.white70,
                        width: 1),
                    borderRadius:
                    BorderRadius.circular(15),
                  ),),

              ],
            )

          ],
        ),),


        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black87,
            backgroundColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,),
                  label:'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card_sharp,),
                  label: 'OnePass',
                  backgroundColor: Colors.black12
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.backup_table_rounded, ),
                label: 'PayperSession',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.person,),
                label: 'Account',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            iconSize: 30,
            onTap: _onItemTapped,
            elevation: 5
        ),
      )
    );
  }

}
