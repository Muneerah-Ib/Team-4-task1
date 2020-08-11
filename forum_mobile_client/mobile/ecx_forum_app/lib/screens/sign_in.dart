import 'package:ecx_forum_app/screens/feeds_screen.dart';
import 'package:ecx_forum_app/utilities/custom_paints.dart';
import 'package:ecx_forum_app/utilities/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecx_forum_app/utilities/styles.dart' as Style;
import 'package:ecx_forum_app/utilities/constants.dart' as Constant;
class SignIn extends StatelessWidget {
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
                Text("SIGN IN",style: Style.labelText.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Style.cLightGrey
                ),),
                Spacer(),
                CustomTextField(
                  hintText: "Email",
                ),
                CustomTextField(
                  hintText: "Password",
                ),
                Spacer(),
                Text("FORGOT PASSWORD?",style: Style.labelText.copyWith(
                 fontWeight: FontWeight.bold,
                 fontSize: 13,
                  color: Style.cMediumGrey.withOpacity(0.57)
                ),),
                Spacer(),
                CustomLongButton(
                  label: "CONTINUE",
                  onPressed: (){
                    Navigator.push(context, CupertinoPageRoute(
                        builder: (context) => FeedsScreen()
                    ));
                  },
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don\'t have an account?", style: Style.labelText.copyWith(
                      fontSize: 11
                    ),),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Click here to SIGN UP",style:Style.labelText.copyWith(
                        fontSize: 12,
                      color: Style.cLightBlue
                    ),),
                  ],
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

