import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netb/Screen/Design14/screen1/category.dart';
import 'package:netb/Screen/Design14/screen1/premium.dart';
import 'package:netb/Screen/Design14/screen1/profile.dart';
import 'package:netb/Screen/Design14/screen1/top.dart';
import 'package:netb/utils/design14Theme.dart';

class Design14Screen1 extends StatelessWidget {
  const Design14Screen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Design14PlatformTheme.primaryColor,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10),
              Design14Screen1Top(),
              SizedBox(height: 10),
              Design14Screen1Profile(),
              SizedBox(height: 10),
              Design14Screen1Premium(),
              SizedBox(height: 10),
              Design14Screen1Category()
            ],
          ),
        ),
      ),
    );
  }
}
