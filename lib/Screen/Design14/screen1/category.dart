import 'package:flutter/material.dart';
import 'package:netb/utils/design14Theme.dart';

class Design14Screen1Category extends StatelessWidget {
  const Design14Screen1Category({Key key}) : super(key: key);

  Widget customButton(
      {String title, Color borderColor, Color innerColor, Color textColor}) {
    return Container(
      height: 45,
      width: 120,
      decoration: BoxDecoration(
        color: innerColor,
        borderRadius: BorderRadius.circular(55),
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        "$title",
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customButton(
              borderColor: Design14PlatformTheme.secondTextColor,
              title: "Posts",
              innerColor: Colors.transparent,
              textColor: Design14PlatformTheme.white),
          SizedBox(
            width: 30,
          ),
          customButton(
            borderColor: Design14PlatformTheme.secondTextColor,
            title: "Videos",
            innerColor: Design14PlatformTheme.white,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
