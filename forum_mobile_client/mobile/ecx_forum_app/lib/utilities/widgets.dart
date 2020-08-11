import 'package:ecx_forum_app/screens/comments_screen.dart';
import 'package:ecx_forum_app/screens/feeds_screen.dart';
import 'package:ecx_forum_app/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecx_forum_app/utilities/styles.dart' as Style;
import 'package:flutter_icons/flutter_icons.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key key, this.hintText, this.controller, this.validator})
      : super(key: key);
  final TextEditingController controller;
  final Function(String) validator;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(boxShadow: Style.boxShadow),
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(16, 16, 0, 16),
          labelText: hintText,
          labelStyle: Style.defaultTextStyle.copyWith(
            color: Style.cMediumGrey.withOpacity(0.57),
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: Style.cWhite,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class CustomLongButton extends StatelessWidget {
  const CustomLongButton({Key key, this.onPressed, this.label})
      : super(key: key);
  final Function onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: FlatButton(
        color: Style.cMediumBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: onPressed,
        child: Text(
          label,
          style: Style.defaultTextStyle.copyWith(
            color: Style.cWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.only(left: 26, bottom: 48, top: 30, right: 24),
        color: Color(0xFF2A2E43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: InkResponse(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: Style.cWhite,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => ProfileScreen(),
                    ));
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Olamide Gabriel",
              style: Style.defaultTextStyle.copyWith(
                color: Style.cWhite,
                fontSize: 24,
              ),
            ),
            Text(
              "lordlamee",
              style: Style.defaultTextStyle.copyWith(
                  color: Style.cWhite.withOpacity(0.56), fontSize: 12),
            ),
            Spacer(),
            MenuRow(
              label: "Home",
              icon: Feather.home,
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => FeedsScreen(),
                    ));
              },
            ),
            MenuRow(
              onTap: () {},
              label: "Messages",
              icon: Feather.mail,
            ),
            MenuRow(
              onTap: () {},
              label: "Notifications",
              icon: Icons.notifications,
            ),
            MenuRow(
              onTap: () {},
              label: "Contact Us",
              icon: Icons.perm_identity,
            ),
            MenuRow(
              onTap: () {},
              label: "Settings",
              icon: Feather.settings,
            ),
            MenuRow(
              onTap: () {},
              label: "About Us",
              icon: Icons.error_outline,
            ),
            Spacer(),
            MenuRow(
              logout: true,
              onTap: () {
                //Todo: Implement log out
              },
              label: "Log out",
              icon: Feather.log_out,
            ),
          ],
        ),
      ),
    );
  }
}

class MenuRow extends StatelessWidget {
  const MenuRow(
      {Key key,
      this.label,
      this.icon,
      @required this.onTap,
      this.logout = false})
      : super(key: key);
  final Function onTap;
  final String label;
  final IconData icon;
  final bool logout;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Icon(
              icon,
              color: logout ? Style.cWhite.withOpacity(0.5) : Style.cWhite,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              label,
              style: Style.defaultTextStyle.copyWith(
                color: logout ? Style.cWhite.withOpacity(0.5) : Style.cWhite,
                fontSize: 20,
              ),
            )
          ],
        ),
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
