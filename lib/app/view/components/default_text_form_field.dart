import 'package:flutter/material.dart';

class DefaultTextFormField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  const DefaultTextFormField(
      {Key key, this.hintText = "", this.controller, this.isPassword = false})
      : super(key: key);

  @override
  _DefaultTextFormFieldState createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword,
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(17),
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
