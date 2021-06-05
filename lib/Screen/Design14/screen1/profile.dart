import 'package:flutter/material.dart';
import 'package:netb/utils/design14Theme.dart';

class Design14Screen1Profile extends StatelessWidget {
  const Design14Screen1Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9 / 3,
          alignment: Alignment.center,
          child: Container(
            width: 85,
            height: 85,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/images/profile.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 2.1 / 3,
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Abel Lamesgen",
                style: TextStyle(
                  color: Design14PlatformTheme.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "200.B",
                        style: TextStyle(
                          color: Design14PlatformTheme.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 7.5),
                      Text(
                        "Followers",
                        style: TextStyle(
                          color: Design14PlatformTheme.secondTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "384",
                        style: TextStyle(
                          color: Design14PlatformTheme.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 7.5),
                      Text(
                        "Following",
                        style: TextStyle(
                          color: Design14PlatformTheme.secondTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
