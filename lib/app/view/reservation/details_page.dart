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
                  Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 25,
                        color: primaryColor,
                      ),
                      SizedBox(width: 7,),
                      Text('Detalhes',
                        style: TextStyle(fontSize: 20, color: primaryColor)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      text: 'Marca: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.marca}",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20),
                        )
                      ]
                    )
                  ),
                  Container(height: 10),
                  Text.rich(
                    TextSpan(
                      text: 'Modelo: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.modelo}",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20),
                        )
                      ]
                    )
                  ),
                  Container(height: 10),
                  Text.rich(
                    TextSpan(
                      text: 'Potência: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.potencia}",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20),
                        )
                      ]
                    )
                  ),
                  Container(height: 10),
                  Text.rich(
                    TextSpan(
                      text: 'Ano: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.ano}",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20),
                        )
                      ]
                    )
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      text: 'KM rodados: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.quilometragem}",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 20),
                        )
                      ]
                    )
                  ),
                  Container(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money_rounded,
                        size: 25,
                        color: primaryColor,
                      ),
                      SizedBox(width: 7,),
                      Text('Valor',
                        style: TextStyle(fontSize: 20, color: primaryColor)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'R\$ ${widget.vehicleSummary.valorLocacao}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: DefaultButton(
                        title: "CONTINUAR",
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
