import 'package:app/app/view/home/components/button_bar_component.dart';
import 'package:app/core/theme/app_icons.dart';
import 'package:flutter/material.dart';

class BarButtonComponent extends StatefulWidget {
  final Function(int) onChange;

  const BarButtonComponent({Key key, this.onChange}) : super(key: key);
  @override
  _BarButtonComponentState createState() => _BarButtonComponentState();
}

class _BarButtonComponentState extends State<BarButtonComponent> {
  bool car = false;
  bool bus = false;
  bool bike = false;
  bool moto = false;
  @override
  void initState() {
    car = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ButtonBarComponent(
            title: "Carros",
            icon: AppIcons.car,
            isSelected: car,
            onPressed: () {
              setState(() {
                bus = false;
                car = true;
                bike = false;
                moto = false;
              });
              widget.onChange(0);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          ButtonBarComponent(
            title: "Ônibus",
            icon: AppIcons.bus,
            isSelected: bus,
            onPressed: () {
              setState(() {
                bus = true;
                car = false;
                bike = false;
                moto = false;
              });
              widget.onChange(1);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          ButtonBarComponent(
            title: "Bicicleta",
            icon: AppIcons.bike,
            isSelected: bike,
            onPressed: () {
              setState(() {
                bus = false;
                car = false;
                bike = true;
                moto = false;
              });
              widget.onChange(2);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          ButtonBarComponent(
            title: "Motocicleta",
            icon: AppIcons.motocicle,
            isSelected: moto,
            onPressed: () {
              setState(() {
                bus = false;
                car = false;
                bike = false;
                moto = true;
              });
              widget.onChange(3);
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
