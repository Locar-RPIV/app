import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String value) onChanged;
  final String hintText;
  final String errorText;
  final bool isPassword;

  const DefaultTextFormField(
      {Key key,
      this.hintText = "",
      this.errorText,
      this.onChanged,
      this.controller,
      this.isPassword = false})
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
      onChanged: widget.onChanged,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(17),
        hintText: widget.hintText,
        errorText: widget.errorText,
        errorStyle: TextStyle(color: errorColor, fontSize: 12),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: errorColor)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: errorColor)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
