import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/components/vehicle_with_background_component.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../home/home_page.dart';

class RegisterVehiclesDetailsPage extends StatefulWidget {
  final VehicleSummary vehicleSummary;

  const RegisterVehiclesDetailsPage({Key key, this.vehicleSummary})
      : super(key: key);
  @override
  _RegisterVehiclesDetailsPageState createState() =>
      _RegisterVehiclesDetailsPageState();
}

class _RegisterVehiclesDetailsPageState
    extends State<RegisterVehiclesDetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        iconBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: "Cadastro de veículo ",
                    style: TextStyle(fontSize: 20, color: primaryColor),
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: ' ',
                    style: TextStyle(fontSize: 20, color: primaryColor),
                    children: <TextSpan>[
                      TextSpan(
                          text: "efetuado com sucesso :)",
                          style: TextStyle(
                              fontSize: 20,
                              color: primaryColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 349,
              height: 152,
              decoration: BoxDecoration(
                  color: grey900, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  VehicleWithBackgroundComponent(
                    heightBackground: 152,
                    paddingVertical: 25,
                    url: "https://img.icons8.com/plasticine/2x/car--v2.png",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(),
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
                      SizedBox(
                        width: 7,
                      ),
                      Text('Detalhes',
                          style: TextStyle(fontSize: 20, color: primaryColor)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text.rich(TextSpan(
                      text: 'Marca: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.marca}",
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 20),
                        )
                      ])),
                  Container(height: 10),
                  Text.rich(TextSpan(
                      text: 'Modelo: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.modelo}",
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 20),
                        )
                      ])),
                  Container(height: 10),
                  Text.rich(TextSpan(
                      text: 'Potência: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.potencia}",
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 20),
                        )
                      ])),
                  Container(height: 10),
                  Text.rich(TextSpan(
                      text: 'Ano: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.ano}",
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 20),
                        )
                      ])),
                  SizedBox(height: 10),
                  Text.rich(TextSpan(
                      text: 'KM rodados: ',
                      style: TextStyle(fontSize: 20),
                      children: [
                        TextSpan(
                          text: "${widget.vehicleSummary.quilometragem}",
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 20),
                        )
                      ])),
                  SizedBox(
                    height: 72,
                  ),
                  Center(
                    child: DefaultButton(
                      title: "VOLTAR",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                    ),
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
