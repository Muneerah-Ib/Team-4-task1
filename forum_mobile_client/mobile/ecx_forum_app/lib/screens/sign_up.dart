import 'package:ecx_forum_app/screens/sign_in.dart';
import 'package:ecx_forum_app/utilities/custom_paints.dart';
import 'package:ecx_forum_app/utilities/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecx_forum_app/utilities/styles.dart' as Style;
import 'package:ecx_forum_app/utilities/constants.dart' as Constant;

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Constant.screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CustomPaint(
          painter: BackgroundPaint(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                Center(
                  child: Image(
                    image: AssetImage("assets/ecxlogo.png"),
                    height: Constant.screenSize.height * 0.072,
                  ),
                ),
                Spacer(),
                Text(
                  "SIGN UP",
                  style: Style.defaultTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Style.cLightGrey),
                ),
                Spacer(),
                CustomTextField(
                  hintText: "Username",
                ),
                CustomTextField(
                  hintText: "Email",
                ),
                CustomTextField(
                  hintText: "Password",
                ),
                CustomTextField(
                  hintText: "Confirm Password",
                ),
                Spacer(
                  flex: 2,
                ),
                CustomLongButton(
                  label: "SIGN UP",
                  onPressed: () {},
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By registering you agree to our ",
                      style: Style.defaultTextStyle.copyWith(fontSize: 11),
                    ),
                    Text(
                      "terms and conditions",
                      style: Style.defaultTextStyle
                          .copyWith(fontSize: 12, color: Style.cLightBlue),
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    "Already have an account? Login to your account.",
                    style: Style.defaultTextStyle.copyWith(fontSize: 12),
                  ),
                ),
                Spacer(
                  flex: 6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
