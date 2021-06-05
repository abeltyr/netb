import 'package:flutter/material.dart';
import 'package:netb/utils/design14Theme.dart';

class Design14Screen1Top extends StatelessWidget {
  const Design14Screen1Top({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 3.5 / 6,
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "My Profile",
            style: TextStyle(
              color: Design14PlatformTheme.white,
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 2 / 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Design14PlatformTheme.secondColor,
                  ),
                  child: Icon(
                    Icons.settings,
                    color: Design14PlatformTheme.white,
                    size: 28,
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    vertical: 21.5,
                    horizontal: 12.5,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Design14PlatformTheme.secondColor,
                  ),
                  child: Image.asset(
                    "assets/icons/dots.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
