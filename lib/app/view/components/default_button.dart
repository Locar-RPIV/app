import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  final String title;
  final void Function() onTap;

  const DefaultButton({Key key, @required this.title, this.onTap})
      : super(key: key);
  @override
  _DefaultButtonState createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) {
                  if (states.contains(MaterialState.disabled)) {
                    return grey900;
                  }
                  return primaryColor;
                }),
                shape: MaterialStateProperty.resolveWith(
                  (states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                )),
            onPressed: widget.onTap,
            child: SizedBox(
              width: double.maxFinite,
              height: 40,
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: widget.onTap != null ? Colors.white : grey600,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
