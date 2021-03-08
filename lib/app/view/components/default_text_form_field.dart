import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String value) onChanged;
  final String hintText;
  final String errorText;
  final String labelText;
  final bool isPassword;
  final TextInputType type;

  const DefaultTextFormField(
      {Key key,
      this.hintText = "",
      this.errorText,
      this.onChanged,
      this.controller,
      this.labelText,
      this.type = TextInputType.text,
      this.isPassword = false})
      : super(key: key);

  @override
  _DefaultTextFormFieldState createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Text(
            widget.labelText,
            style: TextStyle(fontSize: 13, color: grey),
          ),
        if (widget.labelText != null)
          SizedBox(
            height: 12,
          ),
        TextFormField(
          obscureText: widget.isPassword,
          controller: widget.controller,
          onChanged: widget.onChanged,
          keyboardType: widget.type,
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
        ),
      ],
    );
  }
}
