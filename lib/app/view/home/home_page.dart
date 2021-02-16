import 'package:app/app/controller/home/home_controller.dart';
import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/home/components/bar_button_component.dart';
import 'package:app/app/view/home/components/vehicle_button_component.dart';
import 'package:app/core/enum/Vehicle/vehicle_type.dart';
import 'package:app/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 30.0, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BarButtonComponent(),
            SizedBox(height: 46,),
            Text(
              "Frota da locadora",
              style: TextStyle(
                fontSize: 20,
                color: primaryColor
              ),
            ),
            SizedBox(height: 30,),
            FutureBuilder<List<VehicleSummary>>(
              future: controller.getVehiclesSummary(),
              builder: (context, snapshot) {
                if (snapshot.hasData && !snapshot.hasError) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        snapshot.data.length, (index) => 
                        snapshot.data[index].type == VehicleType.rental ? Container(
                          padding: EdgeInsets.only(right: 25),
                          child: VehicleButtonComponent(
                            vehicle: snapshot.data[index],
                          ),
                        ): Container()
                      ),
                    ),
                  );
                }
                return Text("Sem data");
              },
            ),
            SizedBox(height: 48,),
            Text(
              "Veículos particulares",
              style: TextStyle(
                fontSize: 20,
                color: primaryColor
              ),
            ),
            SizedBox(height: 30,),
            FutureBuilder<List<VehicleSummary>>(
              future: controller.getVehiclesSummary(),
              builder: (context, snapshot) {
                if (snapshot.hasData && !snapshot.hasError) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        snapshot.data.length, (index) => 
                        snapshot.data[index].type == VehicleType.particular ? Container(
                          padding: EdgeInsets.only(right: 25),
                          child: VehicleButtonComponent(
                            vehicle: snapshot.data[index],
                            type: VehicleType.particular
                          ),
                        ): Container()
                      ),
                    ),
                  );
                }
                return Text("Sem data");
              },
            ),
          ],
        ),
      ),
    );
  }
}