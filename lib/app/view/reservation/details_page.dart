import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/components/vehicle_with_background_component.dart';
import 'package:app/app/view/reservation/prereservation_confirmation_page.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final VehicleSummary vehicleSummary;

  const DetailsPage({Key key, this.vehicleSummary}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        iconBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VehicleWithBackgroundComponent(
              heightBackground: 233,
              paddingVertical: 45,
              url: widget.vehicleSummary.imageUrl,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text('Detalhes',
                        style: TextStyle(fontSize: 20, color: primaryColor)),
                    leading: Icon(
                      Icons.info_outline,
                      size: 25,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Marca: ${widget.vehicleSummary.marca}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 10),
                  Text(
                    'Modelo: ${widget.vehicleSummary.modelo}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 10),
                  Text(
                    'Potência: ${widget.vehicleSummary.potencia}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 10),
                  Text(
                    'Ano: ${widget.vehicleSummary.ano}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'KM rodados: ${widget.vehicleSummary.quilometragem}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 10),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: Text('Valor',
                        style: TextStyle(fontSize: 20, color: primaryColor)),
                    leading: Icon(
                      Icons.attach_money_rounded,
                      size: 25,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    'R\$ ${widget.vehicleSummary.valorLocacao}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: DefaultButton(
                        title: "RESERVAR",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PreReservationConfirmationPage()),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
