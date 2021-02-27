import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class VehicleWithBackgroundComponent extends StatelessWidget {
  final double heightBackground;
  final double paddingVertical;
  final String url;

  const VehicleWithBackgroundComponent({
    Key key, 
    this.paddingVertical = 25,
    @required this.url,
    this.heightBackground = 155}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: heightBackground,
      color: grey900,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: paddingVertical),
        child: Image.network(
          url,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}