import 'package:app/app/controller/home/home_controller.dart';
import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/home/components/bar_button_component.dart';
import 'package:app/app/view/home/components/vehicle_button_component.dart';
import 'package:app/app/view/home/components/vehicle_button_shimmer.dart';
import 'package:app/core/enum/Vehicle/vehicle_type.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  List<VehicleSummary> listVehicles = [];
  bool isLoading = false;
  int vehicleType = 0;

  @override
  void initState() {
    getVehicles();
    controller.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(
        user: controller.authUser,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 30.0, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BarButtonComponent(
              onChange: (value) {
                if (value == 0) {
                  setState(() {
                    vehicleType = 0;
                  });
                }
                if (value == 1) {
                  setState(() {
                    vehicleType = 1;
                  });
                }
                if (value == 2) {
                  setState(() {
                    vehicleType = 2;
                  });
                }
                if (value == 3) {
                  setState(() {
                    vehicleType = 3;
                  });
                }
              },
            ),
            SizedBox(
              height: 46,
            ),
            Text(
              "Frota da locadora",
              style: TextStyle(fontSize: 20, color: primaryColor),
            ),
            SizedBox(
              height: 30,
            ),
            isLoading
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Container(
                              padding: EdgeInsets.only(right: 25),
                              child: VehicleButtonShimmer())),
                    ),
                  )
                : listVehicles
                        .where((element) => element.type == VehicleType.rental && element.tipoCombustivel == vehicleType)
                        .isNotEmpty
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              listVehicles.length,
                              (index) =>
                                  listVehicles[index].type == VehicleType.rental && listVehicles[index].tipoCombustivel == vehicleType
                                      ? Container(
                                          padding: EdgeInsets.only(right: 25),
                                          child: VehicleButtonComponent(
                                            vehicle: listVehicles[index],
                                          ),
                                        )
                                      : Container()),
                        ),
                      )
                    : Text(
                        "Infelizmente não temos carros frota da locadora disponíveis!"),
            SizedBox(
              height: 48,
            ),
            Text(
              "Veículos particulares",
              style: TextStyle(fontSize: 20, color: primaryColor),
            ),
            SizedBox(
              height: 30,
            ),
            isLoading
                ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          3,
                          (index) => Container(
                              padding: EdgeInsets.only(right: 25),
                              child: VehicleButtonShimmer())),
                    ),
                  )
                : listVehicles
                        .where(
                            (element) => element.type == VehicleType.particular && element.tipoCombustivel == vehicleType)
                        .isNotEmpty
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              listVehicles.length,
                              (index) => listVehicles[index].type ==
                                      VehicleType.particular && listVehicles[index].tipoCombustivel == vehicleType
                                  ? Container(
                                      padding: EdgeInsets.only(right: 25),
                                      child: VehicleButtonComponent(
                                        vehicle: listVehicles[index],
                                      ),
                                    )
                                  : Container()),
                        ),
                      )
                    : Text(
                        "Infelizmente não temos carros do tipo particulares disponíveis!"),
          ],
        ),
      ),
    );
  }

  getVehicles() async {
    setState(() {
      isLoading = true;
    });
    listVehicles = await controller.getVehiclesSummary();
    setState(() {
      isLoading = false;
    });
  }
}
