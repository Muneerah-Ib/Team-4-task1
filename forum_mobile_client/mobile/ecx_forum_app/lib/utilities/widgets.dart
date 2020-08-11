import 'package:ecx_forum_app/screens/feeds_screen.dart';
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
        padding: EdgeInsets.only(left: 26),
        color: Color(0xFF2A2E43),
        child: Column(
          children: [
            DrawerHeader(
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
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                  Text("Olamide Gabriel"),
                  Text("lordlamee")
                ],
              ),
            ),
            MenuRow(
              label: "Home",
              icon: Feather.home,
              onTap: () {
                Navigator.pushReplacement(
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
  const MenuRow({
    Key key,
    this.label,
    this.icon,
    @required this.onTap,this.logout = false
  }) : super(key: key);
  final Function onTap;
  final String label;
  final IconData icon;
  final bool logout;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Icon(
            icon,
            color: logout? Style.cWhite.withOpacity(0.5): Style.cWhite,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            label,
            style: Style.defaultTextStyle.copyWith(
              color: logout? Style.cWhite.withOpacity(0.5): Style.cWhite,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
