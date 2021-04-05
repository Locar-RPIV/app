import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_icons.dart';
import 'reservation_confirmation_page.dart';

class PreReservationConfirmationPage extends StatefulWidget {
  @override
  _PreReservationConfirmationPageState createState() =>
      _PreReservationConfirmationPageState();
}

class _PreReservationConfirmationPageState
    extends State<PreReservationConfirmationPage> {
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
                    text: "Quando ",
                    style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                        fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'deseja',
                          style: TextStyle(
                              fontSize: 20,
                              color: primaryColor,
                              fontWeight: FontWeight.w300)),
                      TextSpan(text: ' retirar'),
                      TextSpan(
                          text: ' o véiculo ?',
                          style: TextStyle(
                              fontSize: 20,
                              color: primaryColor,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppIcon(
                          icon: AppIcons.calendar,
                          color: primaryColor,
                        ),
                        Text('Escolha a data',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black87)),
                        Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Onde ",
                          style: TextStyle(
                              fontSize: 20,
                              color: primaryColor,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'deseja',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w300)),
                            TextSpan(text: ' retirar'),
                            TextSpan(
                                text: ' o véiculo ?',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppIcon(
                          icon: AppIcons.mappin,
                          color: primaryColor,
                        ),
                        Text('Escolha a unidade',
                            style:
                                TextStyle(fontSize: 20, color: Colors.black87)),
                        Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: DefaultButton(
                      title: "RESERVAR",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ReservationConfirmationPage()),
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
    );
  }
}
