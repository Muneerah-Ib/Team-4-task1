import 'package:ecx_forum_app/screens/comments_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecx_forum_app/utilities/styles.dart' as Style;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:ecx_forum_app/utilities/widgets.dart';
class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: FeedBody(),
    );
  }
}

class FeedBody extends StatelessWidget {
  const FeedBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16,40,16,0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkResponse(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
                child: Icon(Feather.menu)),
          ),
          Text('Feeds',style: Style.defaultTextStyle.copyWith(
            fontSize: 40,
            color: Style.alternateColor,
            fontWeight: FontWeight.w500,
          ),),
          Expanded(
            child: ListView(
              children: [
                FeedCard(),
                FeedCard(),
                FeedCard(),
                FeedCard(),
                FeedCard(),
                FeedCard(),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
