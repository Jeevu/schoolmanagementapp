import 'package:flutter/material.dart';

class NoticeList extends StatefulWidget {
  @override
  _NoticeListState createState() => _NoticeListState();
}

class _NoticeListState extends State<NoticeList> {
  @override
  Widget build(BuildContext context) {
    var items=List<Widget>();
    var carditems=[
      [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ],
            [
        'Gaijatra Holiday',
        '04 Aug 2020',
        'The school shall remain closed on 3rd August due to Gaijatra Festival and wll continue on same time on 5th August'
      ]
    ];
    for(var item in carditems){
      items.add(NoticeListWidget(type:item,));
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
      height: 100,
        child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        child:Column
        (crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(widget.type[0],style: TextStyle(fontWeight: FontWeight.bold,),),
          Row(
            children: [
              Icon(Icons.calendar_today,color: Colors.grey),
              Text(widget.type[1])
            ],
            
          ),
          Expanded(child:Text(widget.type[2],maxLines: 2,overflow: TextOverflow.clip,style: TextStyle(fontSize: 11),),)
        ],)
      ),
    );
  }
}