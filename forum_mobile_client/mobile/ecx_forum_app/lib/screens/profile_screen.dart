import 'package:ecx_forum_app/screens/comments_screen.dart';
import 'package:ecx_forum_app/utilities/widgets.dart';
import 'package:flutter/material.dart';
import 'package:ecx_forum_app/utilities/styles.dart' as Style;
import 'package:ecx_forum_app/utilities/constants.dart' as Constant;

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constant.screenSize = MediaQuery.of(context).size;
    Orientation _orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,40,16,0),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height:_orientation== Orientation.portrait ?  Constant.screenSize.width/3.1 : 130,
                width: _orientation== Orientation.portrait ?  Constant.screenSize.width/3.1 : 130,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
            ),
            Text("Username",style: Style.defaultTextStyle.copyWith(
              color: Style.alternateColor,
              fontSize: 26
            ),),
            Text("Flutter Developer",style: Style.defaultTextStyle.copyWith(
              color: Style.cMediumGrey,
              fontSize: 18
            ),),
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 24),
              decoration: BoxDecoration(
                boxShadow: Style.boxShadow,
                color: Style.cWhite,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ProfileDetail(
                  numbers: "117k",
                  property: "FOLLOWERS",
                ),
                  VerticalDivider(
                    width: 1,
                  ),
                  ProfileDetail(
                    numbers: "200k",
                    property: "FOLLOWING",
                  ),
                  VerticalDivider(),
                  ProfileDetail(
                    numbers: "200",
                    property: "LIKES",
                  ),
                ],
              ),
            ),
            FeedCard(),
          ],
        ),
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    Key key,this.numbers,this.property
  }) : super(key: key);
  final String numbers;
  final String property;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(numbers, style: Style.defaultTextStyle.copyWith(
          color: Style.alternateColor,
          fontSize: 22,
        ),),
        SizedBox(
          height: 4,
        ),
        Text(property,style: Style.defaultTextStyle.copyWith(
          color: Style.cMediumGrey,
          fontSize: 12,
        ),)
      ],
    );
  }
}
