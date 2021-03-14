import 'package:app/app/view/home/components/button_bar_component.dart';
import 'package:app/core/theme/app_icons.dart';
import 'package:flutter/material.dart';

class BarButtonComponent extends StatefulWidget {
  @override
  _BarButtonComponentState createState() => _BarButtonComponentState();
}

class _BarButtonComponentState extends State<BarButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ButtonBarComponent(
            title: "Carros",
            icon: AppIcons.car,
            isSelected: true,
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          ButtonBarComponent(
            title: "Ônibus",
            icon: AppIcons.bus,
          ),
          SizedBox(
            width: 10,
          ),
          ButtonBarComponent(
            title: "Bicicleta",
            icon: AppIcons.bike,
          ),
          SizedBox(
            width: 10,
          ),
          ButtonBarComponent(
            title: "Motocicleta",
            icon: AppIcons.motocicle,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
