import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netb/Model/graph.dart';

class GraphWidget extends StatefulWidget {
  GraphWidget({Key key}) : super(key: key);

  @override
  _GraphWidgetState createState() => _GraphWidgetState();
}

class CurvePainter extends CustomPainter {
  final List<double> dataLists;
  CurvePainter({this.dataLists});
  @override
  void paint(Canvas canvas, Size size) {
    List<double> orderedList = [...dataLists];
    orderedList.sort();

    double maxValue = orderedList[orderedList.length - 1] + 20;
    double minValue = orderedList[0] - 20;
    int valueLength = orderedList.length;
    double totalWidth = size.width;
    double totalHeight = size.height;
    print(totalWidth);

    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.stroke;

    var path = Path();

    List<GraphModal> graphPoints = [];

    int xCount = 0;
    for (var dataList in dataLists) {
      double interPlatedXValue = ((xCount * totalWidth) / (valueLength - 1));
      double interPlatedYValue =
          ((maxValue - dataList) / (maxValue - minValue)) * totalHeight;

      double yValue = totalHeight / 4;
      double xValue = 0;

      if (xCount != 0) {
        xValue = graphPoints[xCount - 1].data.dx +
            (interPlatedXValue - graphPoints[xCount - 1].data.dx) / 4;
        if (xCount % 2 == 0) {
          yValue = totalHeight * 3 / 4;
        }
        if (xCount % 2 == 0)
          yValue = graphPoints[xCount - 1].data.dy +
              (graphPoints[xCount - 1].data.dy - interPlatedYValue) / 8;
        else if (xCount % 2 != 0)
          yValue = graphPoints[xCount - 1].data.dy -
              (graphPoints[xCount - 1].data.dy - interPlatedYValue) / 8;
        // if (xCount % 2 == 0 &&
        //     graphPoints[xCount - 1].data.dy < interPlatedYValue)
        //   yValue = graphPoints[xCount - 1].data.dy +
        //       (graphPoints[xCount - 1].data.dy - interPlatedYValue) / 8;
        // else if (xCount % 2 == 0 &&
        //     interPlatedYValue < graphPoints[xCount - 1].data.dy)
        //   yValue = interPlatedYValue +
        //       (interPlatedYValue - graphPoints[xCount - 1].data.dy) / 8;
        // else if (xCount % 2 != 0 &&
        //     graphPoints[xCount - 1].data.dy > interPlatedYValue)
        //   yValue = graphPoints[xCount - 1].data.dy -
        //       (graphPoints[xCount - 1].data.dy - interPlatedYValue) / 8;
        // else if (xCount % 2 != 0 &&
        //     interPlatedYValue < graphPoints[xCount - 1].data.dy)
        //   yValue = interPlatedYValue -
        //       (interPlatedYValue - graphPoints[xCount - 1].data.dy) / 8;
      }

      graphPoints = [
        ...graphPoints,
        GraphModal(
          data: Offset(interPlatedXValue, interPlatedYValue),
          control: Offset(
            xValue,
            yValue,
          ),
        )
      ];
      xCount++;
    }

    path.moveTo(graphPoints[0].data.dx, graphPoints[0].data.dy);

    int valueCount = 0;
    for (var graphPoint in graphPoints) {
      path.lineTo(
        graphPoints[valueCount].data.dx,
        graphPoints[valueCount].data.dy,
        // graphPoints[valueCount].data.dx,
        // graphPoints[valueCount].data.dy,
        // 10,
      );
      valueCount = valueCount + 1;
      print("${graphPoint.data.dx} ${graphPoint.data.dy}");
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class _GraphWidgetState extends State<GraphWidget>
    with SingleTickerProviderStateMixin {
  var height = 0.25;
  Animation<double> animation;
  AnimationController controller;
  Tween<double> _rotationTween = Tween(begin: -pi, end: pi);
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    animation = _rotationTween.animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.repeat();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CustomPaint(
        // foregroundPainter: CurvePainter(
        //   dataLists: [
        //     1,
        //     2,
        //     3,
        //     4,
        //     5,
        //     6,
        //     5,
        //     4,
        //     3,
        //     2,
        //     1,
        //   ],
        // ),
        isComplex: true,
        willChange: true,
        painter: CurvePainter(
          dataLists: [
            11,
            12,
            15,
            14,
            13,
            10,
            12,
            19,
            13,
            12,
            15,
            // 1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1,
          ],
        ),
      ),
    );
  }
}
