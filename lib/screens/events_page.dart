import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';
import 'package:schoolmanagementapp/screens/event_details_page.dart';

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
                      color: MyColors.customcolor,
                      onPressed: null,
                    ),
                    Center(
                      child: Text(
                        'Events',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                );
              },
            ),
          ),
        ),
        searchBar(),
        Expanded(
          child: SingleChildScrollView(
            child: EventsList(),
          ),
        ),
      ]),
    ));
  }
}

Widget searchBar() {
  TextEditingController controller = TextEditingController();

  final FocusNode _searchFocus = FocusNode();
  return Container(
    height: 40,
    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.black38.withAlpha(10),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: TextField(
            focusNode: _searchFocus,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Image.asset('assets/Assets/Search.png'),
              ),
              hintText: "Search Events",
              hintStyle:
                  TextStyle(color: Colors.black.withAlpha(120), fontSize: 12),
              border: InputBorder.none,
            ),
            onChanged: (String keyword) {},
          ),
        ),
        Icon(
          Icons.calendar_today,
          color: MyColors.customcolor,
          size: 15,
        )
      ],
    ),
  );
}

void setState(Null Function() param0) {}

class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var events = List<Widget>();
    var eventData = [
      [
        'assets/Assets/culturalprgm.png',
        'Cultural Program',
        '04 Aug 2020',
        '9:00',
        'New Baneshwor Nepal'
      ],
      [
        'assets/Assets/culturalprgm.png',
        'Sports Day',
        '04 Aug 2020',
        '9:00',
        'New Baneshwor Nepal'
      ],
      [
        'assets/Assets/culturalprgm.png',
        'Cultural Program',
        '04 Aug 2020',
        '9:00',
        'New Baneshwor Nepal'
      ],
      [
        'assets/Assets/culturalprgm.png',
        'Sports Day',
        '04 Aug 2020',
        '9:00',
        'New Baneshwor Nepal'
      ],
      [
        'assets/Assets/culturalprgm.png',
        'Cultural Program',
        '04 Aug 2020',
        '9:00',
        'New Baneshwor Nepal'
      ],
      [
        'assets/Assets/culturalprgm.png',
        'Sports Day',
        '04 Aug 2020',
        '9:00',
        'New Baneshwor Nepal'
      ]
    ];
    for (var items in eventData) {
      events.add(EventsListWidgt(type: items));
    }
    return Column(
      children: events,
    );
  }
}

class EventsListWidgt extends StatefulWidget {
  final List type;

  const EventsListWidgt({Key key, this.type}) : super(key: key);
  @override
  _EventsListWidgtState createState() => _EventsListWidgtState();
}

class _EventsListWidgtState extends State<EventsListWidgt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          child: Row(children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                widget.type[0],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.type[1],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(
                            Icons.calendar_today,
                            size: 15,
                          ),
                          Text(
                            widget.type[2],
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ]),
                        Row(children: [
                          Image.asset(
                            'assets/Assets/watchicon.png',
                            height: 15,
                            width: 15,
                          ),
                          Text(
                            widget.type[3],
                            style: TextStyle(fontSize: 10),
                          )
                        ]),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset(
                            'assets/Assets/mapmarkericon.png',
                            height: 15,
                            width: 15,
                          ),
                          Text(
                            widget.type[4],
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ]),
                        Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: MyColors.customcolor),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>EventDetail(EventArgument(widget.type[1],widget.type[2],widget.type[3]))),);
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'View Details',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  Image.asset(
                                    'assets/Assets/whiteforwardicon.png',
                                    height: 15,
                                    width: 15,
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
