import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class BookingConfirmationPage extends StatefulWidget {
  @override
  _BookingConfirmationPageState createState() =>
      _BookingConfirmationPageState();
}

class _BookingConfirmationPageState extends State<BookingConfirmationPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: 299,
              height: 60,
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
                          style: TextStyle(fontSize: 20, color: primaryColor)),
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
              color: grey900,
              child: Container(
                width: 174,
                height: 76,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: ' ', style: TextStyle(fontSize: 20)),
                        TextSpan(
                            text: "Código da reserva: ",
                            style:
                                TextStyle(fontSize: 23, color: Colors.black)),
                      ],
                    ),
                  ),

                  // child: Text(
                  //   'Código da reserva',
                  //   style: TextStyle(fontSize: 20),
                  // ),
                ),
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
                              style:
                                  TextStyle(fontSize: 23, color: primaryColor)),
                          TextSpan(
                              text: "Modelo: ",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'Fusca 1997 1.0 V6',
                            style: TextStyle(fontSize: 23, color: primaryColor),
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
                              Icons.directions_car,
                              size: 30,
                              color: primaryColor,
                            ),
                          ),
                          TextSpan(
                              text: ' ',
                              style:
                                  TextStyle(fontSize: 23, color: primaryColor)),
                          TextSpan(
                              text: "Retirar na: ",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'Unidade Alegrete',
                            style: TextStyle(fontSize: 23, color: primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 299,
                    height: 60,
                    child: Align(
                      alignment: Alignment.centerRight,
                      heightFactor: 50,
                      child: Text(
                        'Travessa maravilha tristeza,número 0, Centenário, Alegrete - BR',
                        style: TextStyle(fontSize: 14, color: primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: FlatButton(
                      height: 58,
                      minWidth: 350,
                      child: Text(
                        "VOLTAR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                      color: primaryColor,
                      onPressed: () {},
                    ),
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
