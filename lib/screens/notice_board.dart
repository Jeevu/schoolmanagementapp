import 'package:flutter/material.dart';

class NoticeBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Notice',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: null,
            icon:  Image.asset('assets/Assets/nitificationicon.png'),
          )
        ],
      

      ),
      body:SingleChildScrollView(child: NoticeList(),),
   );
  }
}


class NoticeList extends StatefulWidget {
  @override
  _NoticeListState createState() => _NoticeListState();
}

class _NoticeListState extends State<NoticeList> {
  @override
  Widget build(BuildContext context) {
    var items = List<Widget>();
    var carditems = [
      [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ],
      [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ],
      [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ],
      [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ],
      [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ],
      [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ],
      [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ],
    ];
    for (var item in carditems) {
      items.add(NoticeListWidget(
        type: item,
      ));
    }
    return Column(
      children: items,
    );
  }
}

class NoticeListWidget extends StatefulWidget {
  final List type;

  const NoticeListWidget({Key key, this.type}) : super(key: key);
  @override
  _NoticeListWidgetState createState() => _NoticeListWidgetState();
}

class _NoticeListWidgetState extends State<NoticeListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
      height: 110,
      child: Card(
          margin: EdgeInsets.only(top: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.type[0],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Text(
                      widget.type[1],
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Text(
                    widget.type[2],
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    style: TextStyle(fontSize: 11, color: Colors.black),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
