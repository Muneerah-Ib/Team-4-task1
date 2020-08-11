import 'package:flutter/material.dart';
import 'package:ecx_forum_app/utilities/styles.dart' as Style;

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
          labelStyle: Style.labelText.copyWith(
            color: Style.cMediumGrey.withOpacity(0.57),
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: Style.cWhite,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),),
      ),
    );
  }
}


class CustomLongButton extends StatelessWidget {
  const CustomLongButton({
    Key key,this.onPressed,this.label
  }) : super(key: key);
  final Function onPressed;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: FlatButton(
        color: Style.cMediumBlue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
        ),
        onPressed: onPressed,
        child: Text(label,style: Style.labelText.copyWith(
          color: Style.cWhite,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}

