import 'package:app/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends PreferredSize {
  final double size;

  DefaultAppBar({this.size});

  @override
  Size get preferredSize => size ?? Size.fromHeight(115);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.maxFinite,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 33),
              child: Icon(
                Icons.menu,
                color: primaryColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 43),
              child: Text("LOCAR",
                style: TextStyle(color: primaryColor, fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}