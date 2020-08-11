import 'package:flutter/material.dart';
import 'package:ecx_forum_app/utilities/styles.dart' as Style;
import 'package:ecx_forum_app/utilities/constants.dart' as Constant;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:ecx_forum_app/utilities/widgets.dart';

class CommentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            CustomAppBar()
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkResponse(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Feather.arrow_left,
              color: Style.alternateColor,
              size: 25,
            )),
        InkResponse(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Feather.menu,
              color: Style.alternateColor,
            ))
      ],
    );
  }
}
