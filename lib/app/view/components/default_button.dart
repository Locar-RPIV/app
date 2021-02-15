import 'package:app/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  final String title;
  final bool isValid;

  const DefaultButton({Key key, 
    @required this.title, 
    this.isValid = true}) : super(key: key);
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
              "ENTRAR",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
            color: primaryColor,
            onPressed: (){},
          ),
        ),
      ],
    );
  }
}