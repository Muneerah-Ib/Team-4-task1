import 'package:ecx_forum_app/utilities/custom_paints.dart';
import 'package:ecx_forum_app/utilities/widgets.dart';
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
                  Text("SIGN UP", style: Style.labelText.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Style.cLightGrey
                  ),),
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
                onPressed: (){},
              ),
                  Spacer(
                    flex: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("By registering you agree to our ",
                        style: Style.labelText.copyWith(
                            fontSize: 11
                        ),),
                      Text("terms and conditions",
                        style: Style.labelText.copyWith(
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
