import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';
import 'package:schoolmanagementapp/screens/events_page.dart';
import 'package:schoolmanagementapp/widgets/custom_paint.dart';

class ClassRoutine extends StatefulWidget {
  @override
  _ClassRoutineState createState() => _ClassRoutineState();
}

class _ClassRoutineState extends State<ClassRoutine>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.02),
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              width: double.infinity,
              height: size.height * 0.091,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Image.asset('assets/Assets/Menu.png'),
                        color: MyColors.customcolor,
                        onPressed: null,
                      ),
                      Center(
                        child: Text(
                          'Class Routine',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          icon:
                              Image.asset('assets/Assets/nitificationicon.png'),
                          onPressed: null),
                    ],
                  );
                },
              ),
            ),
          ),
       
            
            Card(
                margin: EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                      Container(
                        width: 170,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(children:[
                            Text('Class: One| Section: B'),
                            Icon(Icons.arrow_drop_down_sharp),
                            ]),
                          ),
                      ),
                    Container(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: TabBar(
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: MyColors.customcolor,
                          ),
                          unselectedLabelColor: Colors.black,
                          labelStyle: TextStyle(color: Colors.black),
                          controller: _tabController,
                          tabs: [
                            Column(children: [
                              SizedBox(height: 8),
                              Text(
                                'SUN',
                                style: TextStyle(fontSize: 9),
                              ),
                              SizedBox(height: 8),
                              CircleWidget(),
                            ]),
                            Column(children: [
                              SizedBox(height: 8),
                              Text(
                                'MON',
                                style: TextStyle(fontSize: 9),
                              ),
                              SizedBox(height: 8),
                              CircleWidget(),
                            ]),
                            Column(children: [
                              SizedBox(height: 8),
                              Text(
                                'TUE',
                                style: TextStyle(fontSize: 9),
                              ),
                              SizedBox(height: 8),
                              CircleWidget(),
                            ]),
                            Column(children: [
                              SizedBox(height: 8),
                              Text(
                                'WED',
                                style: TextStyle(fontSize: 9),
                              ),
                              SizedBox(height: 8),
                              CircleWidget(),
                            ]),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 8),
                                  Text(
                                    'THUR',
                                    style: TextStyle(fontSize: 9),
                                  ),
                                  SizedBox(height: 8),
                                  CircleWidget(),
                                ]),
                            Column(children: [
                              SizedBox(height: 8),
                              Text(
                                'FRI',
                                style: TextStyle(fontSize: 9),
                              ),
                              SizedBox(height: 8),
                              CircleWidget(),
                            ]),
                          ]),
                    ),
                  ],
                )),
          
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              RoutineTimeline(),
              RoutineTimeline(),
              RoutineTimeline(),
              RoutineTimeline(),
              RoutineTimeline(),
              RoutineTimeline(),
            ]),
          )
        ]),
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //  color: Colors.red,
        // Change to your preferred size.
        // Width and height will be used under "paint" method below.
        // The canvas accesses it by using size.width, size.height
        //  height: 75,
        //    width: 300,
        child: CustomPaint(
          painter: VerticalLine(false),
        ),
      ),
    );
  }
}

class VerticalLine extends CustomPainter {
  Paint _paint;
  bool reverse;

  VerticalLine(this.reverse) {
    _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(-3.0, 0.0), 0.5, _paint);
    canvas.drawCircle(Offset(3.0, 0.0), 0.5, _paint);
//canvas.drawLine(Offset(0.0, 15.0), Offset(0.0,80.0), _paint);
//canvas.drawCircle(Offset(0.0, 85.0), 5, _paint);
// canvas.drawCircle(Offset(0.0, 55.0), 5, _paint);
// canvas.drawLine(Offset(0.0, 60), Offset(0.0, 100), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class RoutineTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              // padding: EdgeInsets.only(left: 7),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  'Time',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                SizedBox(width: 80),
                Text(
                  'Class',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ]),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            child: Column(
                              children: [
                                Text('7:00'),
                                Text('AM'),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          TimeLineWigdet(),
                          SizedBox(width: 10),
                          Container(
                            height: 75,
                            width: size.width * 0.75,
                            child: Card(
                                // margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Column(

                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Mathematics',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/Assets/reading-book.png',
                                              color: MyColors.customcolor,
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              'Shrivastav Sharma',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ]),
                                )),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            child: Column(
                              children: [
                                Text('8:00'),
                                Text('AM'),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          TimeLineWigdet(),
                          SizedBox(width: 10),
                          Container(
                            height: 75,
                            width: size.width * 0.75,
                            child: Card(
                                // margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Column(

                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Science',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/Assets/reading-book.png',
                                              color: MyColors.customcolor,
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              'Shrivastav Sharma',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ]),
                                )),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            child: Column(
                              children: [
                                Text('9:00'),
                                Text('AM'),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          TimeLineWigdet(),
                          SizedBox(width: 10),
                          Container(
                            height: 75,
                            width: size.width * 0.75,
                            child: Card(
                                // margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Column(

                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Computer',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/Assets/reading-book.png',
                                              color: MyColors.customcolor,
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              'Shrivastav Sharma',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ]),
                                )),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            child: Column(
                              children: [
                                Text('10:00'),
                                Text('AM'),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          TimeLineWigdet(),
                          SizedBox(width: 10),
                          Container(
                            height: 75,
                            width: size.width * 0.75,
                            child: Card(
                                // margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Column(

                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('English',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/Assets/reading-book.png',
                                              color: MyColors.customcolor,
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              'Shrivastav Sharma',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ]),
                                )),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            child: Column(
                              children: [
                                Text('11:00'),
                                Text('AM'),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          TimeLineWigdet(),
                          SizedBox(width: 10),
                          Container(
                            height: 75,
                            width: size.width * 0.75,
                            child: Card(
                                // margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Column(

                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Account',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/Assets/reading-book.png',
                                              color: MyColors.customcolor,
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              'Shrivastav Sharma',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ]),
                                )),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            child: Column(
                              children: [
                                Text('12:00'),
                                Text('PM'),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          TimeLineWigdet(),
                          SizedBox(width: 10),
                          Container(
                            height: 75,
                            width: size.width * 0.75,
                            child: Card(
                                // margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Column(

                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Mathematics',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/Assets/reading-book.png',
                                              color: MyColors.customcolor,
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              'Shrivastav Sharma',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ]),
                                )),
                          ),
                        ]),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            child: Column(
                              children: [
                                Text('1:00'),
                                Text('PM'),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          TimeLineWigdet(),
                          SizedBox(width: 10),
                          Container(
                            height: 75,
                            width: size.width * 0.75,
                            child: Card(
                                // margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  child: Column(

                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Mathematics',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/Assets/reading-book.png',
                                              color: MyColors.customcolor,
                                              height: 10,
                                              width: 10,
                                            ),
                                            Text(
                                              'Shrivastav Sharma',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        )
                                      ]),
                                )),
                          ),
                        ]),
                  ),
                ]),
              ),
            ),
          ]),
    );
  }
}
