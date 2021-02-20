import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  final String title;
  final Function onTap;

  const DefaultButton({Key key, 
    @required this.title, 
    this.onTap}) : super(key: key);
  @override
  _DefaultButtonState createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FlatButton(
            height: 58,
            child: Text(
              widget.title,
              style: TextStyle(
                color: widget.onTap !=null ? Colors.white : grey600,
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
            color: primaryColor,
            disabledColor: grey900,
            onPressed: widget.onTap,
          ),
        ),
      ],
    );
  }
}