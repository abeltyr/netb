import 'package:flutter/material.dart';
import 'package:netb/utils/design14Theme.dart';

class Design14Screen1Premium extends StatelessWidget {
  const Design14Screen1Premium({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45 / 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 2 / 8,
            alignment: Alignment.centerLeft,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.5, 0.0),
                  colors: <Color>[
                    Design14PlatformTheme.glowColor,
                    Design14PlatformTheme.glowColorDark,
                  ],
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 20,
                child: Image.asset(
                  "assets/icons/premium.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 3.5 / 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Premium",
                  style: TextStyle(
                    color: Design14PlatformTheme.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "1 Month Free",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: <Color>[
                          Design14PlatformTheme.glowColor,
                          Design14PlatformTheme.glowColorDark,
                        ],
                      ).createShader(
                        Rect.fromLTWH(25.0, 0.0, 250.0, 20.0),
                      ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 2 / 8,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 30,
              color: Design14PlatformTheme.secondTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
