import 'package:app/app/model/login/auth.dart';
import 'package:app/app/view/components/default_top_sheet.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends PreferredSize {
  final double size;
  final bool iconBack;
  final Auth user;
  final Function onBack;

  DefaultAppBar({this.user, this.size, this.iconBack = false, this.onBack});

  @override
  Size get preferredSize => size ?? Size.fromHeight(115);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 33),
              child: InkWell(
                child: Icon(
                  !iconBack ? Icons.menu : Icons.arrow_back,
                  color: primaryColor,
                  size: 26,
                ),
                onTap: () {
                  !iconBack
                      ? DefaultTopSheet.show(context, user: user)
                      : onBack ?? Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 43),
              child: Text(
                "LOCAR",
                style: TextStyle(color: primaryColor, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
