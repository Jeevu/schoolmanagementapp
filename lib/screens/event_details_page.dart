import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';

class EventDetail extends StatefulWidget {
  final EventArgument args;

   EventDetail(this.args);
  @override
  _EventDetailState createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Colors.grey[100],
                width: double.infinity,
                height: size.height * 0.091,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          padding: EdgeInsets.all((0)),
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: MyColors.customcolor,
                          ),
                          color: Color.fromRGBO(44, 44, 44, 1),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Center(
                          child: Text(
                            'Events Details',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child:
                              Image.asset('assets/Assets/nitificationicon.png'),
                        )
                      ],
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.args.name} 2020',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Start Date: ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                          size: 10,
                        ),
                        Text(
                         widget.args.date,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Venue: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 10,
                        ),
                        Text(
                          ' Pragya Bhawan,Kathmandu',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Time: ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.watch,
                          color: Colors.grey,
                          size: 10,
                        ),
                        Text(
                          widget.args.time,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Description',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'The event is going to be held on comming friday for celebration of the different cultures that we have in our school.There are many variationof passages of Lorem Ipsum abailable',
                      style: TextStyle(color: Colors.grey.shade600,height:1.5 ),
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
class EventArgument{
  final String name;
  final String date;
  final String time;
  static EventArgument args;
  EventArgument(this.name,this.date,this.time);

}
