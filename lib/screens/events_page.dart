import 'dart:html';

import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            width: double.infinity,
            height: size.height * 0.091,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Assets/Menu.png'),
                      color:MyColors.customcolor,
                      onPressed: null,
                    ),

                    Center(
                      child: Text(
                        'Events',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                   SizedBox(width:20),
                  ],
                );
              },
            ),
          ),
        ),
       
//      searchbar
        EventsList(),
      ]),
    ));
  }
}
class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
class EventsListWidgt extends StatefulWidget {
  @override
  _EventsListWidgtState createState() => _EventsListWidgtState();
}

class _EventsListWidgtState extends State<EventsListWidgt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 0.0),
          child: Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      image: DecorationImage(image: AssetImage('assets/Assets/culturalprgm.png'),
                      fit: BoxFit.fill
                      ),
                      
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Cultural Program'),
                        ListTile(leading: Row(children: [
                          Icon(Icons.calendar_today),
                          Text('04 Aug 2020'),
                        ],),
                        trailing: Row(children: [
                          Image.asset('assets/Assets/watchicon.png',height: 10,width: 10,),
                          Text('9:00 PM')
                        ],),
                        ),
                        ListTile(
                          leading: Row(children: [
                            Image.asset('assets/Assets/mapmarkericon.png',height: 10,width: 10,),
                            Text('New Baneshwor,Nepal'),
                          ],),
                          trailing: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.customcolor
                            ),
                            child: Row(children: [
                              Text('View Details',style: TextStyle(color: Colors.white),),
                              Image.asset('assets/Assets/whiteforwardicon.png'),
                            ],)
                          ),      
                        ),
                      ],
                    ),
                  )
                 
                ],
              ),
            ),
      ),
    );
  }
}

