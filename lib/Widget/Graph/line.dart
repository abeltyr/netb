// import 'package:flutter/material.dart';
// import 'package:netb/Model/graph.dart';

// class GraphWidget extends StatefulWidget {
//   GraphWidget({Key key}) : super(key: key);

//   @override
//   _GraphWidgetState createState() => _GraphWidgetState();
// }

// class CurvePainter extends CustomPainter {
//   final List<double> dataLists;
//   CurvePainter({this.dataLists});
//   @override
//   void paint(Canvas canvas, Size size) {
//     List<double> orderedList = [...dataLists];
//     orderedList.sort();

//     double maxValue = orderedList[orderedList.length - 1] + 20;
//     double minValue = orderedList[0] - 20;
//     int valueLength = orderedList.length;
//     double totalWidth = size.width;
//     double totalHeight = size.height;
//     print(totalWidth);

//     var paint = Paint();
//     paint.color = Colors.red;
//     paint.style = PaintingStyle.stroke;
//     paint.strokeWidth = 1.5;

//     var path = Path();

//     List<GraphModal> graphPoints = [];

//     int xCount = 0;
//     for (var dataList in dataLists) {
//       double interPlatedXValue = ((xCount * totalWidth) / (valueLength - 1));
//       double interPlatedYValue =
//           ((maxValue - dataList) / (maxValue - minValue)) * totalHeight;

//       graphPoints = [
//         ...graphPoints,
//         GraphModal(dx: interPlatedXValue, dy: interPlatedYValue)
//       ];
//       xCount++;
//     }

//     path.moveTo(0, graphPoints[0].dy);

//     int valueCount = 0;
//     for (var graphPoint in graphPoints) {
//       path.lineTo(
//         graphPoints[valueCount].dx,
//         graphPoints[valueCount].dy,
//       );
//       if (valueCount > 1) {
//         path.quadraticBezierTo(
//           graphPoints[valueCount - 1].dx,
//           graphPoints[valueCount - 1].dy,
//           graphPoints[valueCount].dx,
//           graphPoints[valueCount].dy,
//         );
//       }
//       valueCount = valueCount + 1;
//       print("${graphPoint.dx} ${graphPoint.dy}");
//     }

//     // path.quadraticBezierTo(
//     //   graphPoints[graphPoints.length - 2].dx,
//     //   graphPoints[graphPoints.length - 2].dy,
//     //   graphPoints[graphPoints.length - 1].dx,
//     //   graphPoints[graphPoints.length - 1].dy,
//     // );
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }

// class _GraphWidgetState extends State<GraphWidget> {
//   var height = 0.25;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       // onTap: () {
//       //   print(" tap");
//       //   setState(() {
//       //     height = 0.5;
//       //   });
//       // },
//       // onDoubleTap: () {
//       //   print("double tap");
//       //   setState(() {
//       //     height = 0.25;
//       //   });
//       // },
//       child: CustomPaint(
//         painter: CurvePainter(dataLists: [
//           // 11,
//           12,
//           15,
//           14,
//           13,
//           10,
//           12,
//           18,
//           13,
//           12,
//           15,
//           // 1, 2, 3, 4, 5, 5, 4, 3, 2, 1,
//         ]),
//       ),
//     );
//   }
// }
