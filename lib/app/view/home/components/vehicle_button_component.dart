import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/view/reservation/details_page.dart';
import 'package:app/core/enum/Vehicle/vehicle_type.dart';
import 'package:app/core/theme/colors.dart';
import 'package:app/core/utils/formatter.dart';
import 'package:flutter/material.dart';

class VehicleButtonComponent extends StatelessWidget {
  final VehicleSummary vehicle;
  final VehicleType type;

  const VehicleButtonComponent({Key key, this.type, this.vehicle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                vehicleSummary: vehicle,
              ),
            ));
      },
      child: Container(
        height: 233,
        width: 208,
        decoration: BoxDecoration(
            color: type == VehicleType.particular ? grey900 : blueLight,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                vehicle.imageUrl != null && vehicle.imageUrl.isNotEmpty
                    ? vehicle.imageUrl
                    : "https://img.icons8.com/plasticine/2x/car--v2.png",
                height: 100,
                width: 185,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 26,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${vehicle.modelo} ${vehicle.cor}',
                    style: const TextStyle(color: grey, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    Formatter.moneySettings(vehicle.valorLocacao.toString()),
                    style: const TextStyle(color: grey, fontSize: 20),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
