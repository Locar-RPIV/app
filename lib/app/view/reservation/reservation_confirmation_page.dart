import 'package:app/app/model/branch/branch.dart';
import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/reservation/reservation.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';

class ReservationConfirmationPage extends StatefulWidget {
  final VehicleSummary vehicleSummary;
  final String location;
  final Reservation reservation;
  final Branch branch;

  const ReservationConfirmationPage(
      {Key key,
      this.vehicleSummary,
      this.branch,
      this.location,
      this.reservation})
      : super(key: key);

  @override
  _ReservationConfirmationPageState createState() =>
      _ReservationConfirmationPageState();
}

class _ReservationConfirmationPageState
    extends State<ReservationConfirmationPage> {
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => HomePage()), (_) => false);

        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: DefaultAppBar(
          onBack: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                (_) => false);
          },
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
                      text: "Deu tudo ",
                      style: TextStyle(fontSize: 20, color: primaryColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'certo',
                            style: TextStyle(
                                fontSize: 20,
                                color: primaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: ' e a sua reserva foi'),
                      ],
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
                            text: "efetuada ",
                            style: TextStyle(
                                fontSize: 20,
                                color: primaryColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'com sucesso :)',
                            style:
                                TextStyle(fontSize: 20, color: primaryColor)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 349,
                height: 152,
                decoration: BoxDecoration(
                    color: grey900, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text("Código da reserva: ",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Text("${widget.reservation.id}",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.directions_car,
                                size: 30,
                                color: primaryColor,
                              ),
                            ),
                            TextSpan(
                                text: ' ',
                                style: TextStyle(
                                    fontSize: 20, color: primaryColor)),
                            TextSpan(
                                text: "Modelo: ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black87)),
                            TextSpan(
                              // text: "${widget.vehicleSummary.modelo}",
                              text: "${widget.vehicleSummary.modelo}",

                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.pin_drop,
                                size: 30,
                                color: primaryColor,
                              ),
                            ),
                            TextSpan(
                                text: ' ',
                                style: TextStyle(
                                    fontSize: 23, color: primaryColor)),
                            TextSpan(
                                text: "Retirar na filial em: ",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black87)),
                            TextSpan(
                              text: '${widget.location}',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 35, right: 30, bottom: 50),
                      child: Text(
                        widget.branch.nome,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
