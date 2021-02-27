import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum AppIconType { svg, png }

class AppIcons {
  static const path = "assets/icons";
  static const car = '$path/car.svg';
  static const bus = '$path/bus.svg';
  static const bike = '$path/bike.svg';
  static const motocicle = '$path/motocicle.svg';
  static const login = '$path/login.svg';
  static const home = '$path/home.svg';
  static const logout = '$path/logout.svg';
  static const reservation = '$path/reservation.svg';
  static const back = '$path/back.svg';
}

extension AppIconsExt on String {
  AppIcon icon({
    String icon,
    Key key,
    BoxFit fit,
    Color color,
    double width,
    double height,
    Function onTap,
  }) {
    return AppIcon(
      icon: this,
      key: key,
      fit: fit,
      color: color,
      width: width,
      height: height,
      onTap: onTap,
    );
  }
}

class AppIcon extends StatelessWidget {
  const AppIcon({
    this.icon,
    this.key,
    this.fit,
    this.color,
    this.width,
    this.height,
    this.onTap,
    this.appIconType = AppIconType.svg,
  }) : super(key: key);

  final Key key;
  final String icon;
  final BoxFit fit;
  final Color color;
  final double height;
  final double width;
  final Function onTap;
  final AppIconType appIconType;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: appIconType == AppIconType.svg
            ? SvgPicture.asset(
                icon ?? AppIcons.car,
                fit: fit ?? BoxFit.none,
                color: color,
                width: width ?? 24.0,
                height: height ?? 24.0,
              )
            : Image.asset(
                icon,
                filterQuality: FilterQuality.high,
              ),
      ),
    );
  }
}
