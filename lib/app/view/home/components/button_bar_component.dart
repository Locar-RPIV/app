import 'package:app/core/theme/app_icons.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ButtonBarComponent extends StatefulWidget {
  final bool isSelected;
  final String icon;
  final String title;
  final Function onPressed;

  const ButtonBarComponent(
      {Key key, this.icon, this.title, this.onPressed, this.isSelected = false})
      : super(key: key);
  @override
  _ButtonBarComponentState createState() => _ButtonBarComponentState();
}

class _ButtonBarComponentState extends State<ButtonBarComponent> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        height: 35,
        padding: EdgeInsets.only(left: 18, right: 25),
        child: Row(
          children: [
            AppIcon(
              icon: widget.icon,
              color: widget.isSelected ? Colors.white : primaryColor,
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              widget.title,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : primaryColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.disabled)) {
              return blueLight;
            }
            return widget.isSelected ? primaryColor : blueLight;
          }),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
          )),
      onPressed: widget.onPressed,
    );
  }
}
