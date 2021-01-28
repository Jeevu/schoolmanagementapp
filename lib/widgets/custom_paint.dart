import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';

class TimeLineWigdet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
    //  color: Colors.red,
      // Change to your preferred size.
      // Width and height will be used under "paint" method below. 
      // The canvas accesses it by using size.width, size.height
      height: 75,
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
..color = MyColors.customcolor
..strokeWidth = 1
..strokeCap = StrokeCap.round
..style=PaintingStyle.stroke;
}

@override
void paint(Canvas canvas, Size size) {

canvas.drawCircle(Offset(0.0, 10.0), 5, _paint);
canvas.drawLine(Offset(0.0, 15.0), Offset(0.0,80.0), _paint);
canvas.drawCircle(Offset(0.0, 85.0), 5, _paint);
// canvas.drawCircle(Offset(0.0, 55.0), 5, _paint);
// canvas.drawLine(Offset(0.0, 60), Offset(0.0, 100), _paint);


}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
return false;
}
}