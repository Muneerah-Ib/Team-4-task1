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
            color: Color(0xFF454F63),
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

class FeedCard extends StatelessWidget {
  const FeedCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Style.cWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: Style.boxShadow
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Frontend',style: Style.defaultTextStyle.copyWith(
                          color: Color(0xFF454F63),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(
                          width: 16,
                        ),
                        Text('Date',style: Style.defaultTextStyle.copyWith(
                          color: Style.cBlack,
                          fontSize: 12,
                        ),),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  Text('by Author',style: Style.defaultTextStyle.copyWith(
                    color: Color(0xFF454F63).withOpacity(0.56),
                    fontSize: 12,
                  ),),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text('When one door of happiness closes, another opens, but often we look so long at the closed door that we do not see the one that has been opened for us.',
            style: Style.defaultTextStyle,
              ),
          Divider(
            thickness: 1.2,
          ),
          Row(
            children: [
              InkResponse(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(
                    builder: (context) => CommentsScreen()
                  ));
                },
                  child: Icon(Feather.message_circle,)),
          Icon(FlutterIcons.mail_forward_faw),
          Icon(Icons.favorite_border)
            ],
          )
        ],
      ),
    );
  }
}
