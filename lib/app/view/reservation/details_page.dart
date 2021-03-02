import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/components/vehicle_with_background_component.dart';
import 'package:app/app/view/reservation/reservation_confirmation_page.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VehicleWithBackgroundComponent(
              heightBackground: 233,
              paddingVertical: 45,
              url:
                  'https://s3-alpha-sig.figma.com/img/f098/ebbb/d4f6510b0503d83c7f4c18d88153bacd?Expires=1614556800&Signature=Yo9bMA62Ol~5jvcldO-WozAGbVioepLtiqWdfPD7QOkuMNnh2Uz4pGwgj5apyiQccmIpoVla5IvhoeaO30zAqDZy-5pIxfAOg9zRpNW4muoYU9GpMJHZiXJn9fa4E6ZT6BaWBah~xjMggOwnViSKwF38rYtYCPoUf0nMLw~IWoyGvjc8lwHyNNqq7ji2zUKHvPjJeFwXZ~XqPSNQsFQwn1FowaXdLPM-UOxrC4C2OnZalnH-F6mJF1JSRtFEcTo3iZ6VAbQIWme3ssNVlqWWs7l6uj8oRXP~B1bMQQggjSqqJRY1s9MfASjJIOTA7hAUQtVlCVHIRh0hsBxYSXR7zQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                    'Marca: Volkswagen',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 10),
                  Text(
                    'Modelo: Fusca',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 10),
                  Text(
                    'Potência: 10.0 V6',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 10),
                  Text(
                    'Ano: 1997',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'KM rodados: 854.901',
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
                    'R\u0024 500,00',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: DefaultButton(title: "RESERVAR", onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReservationConfirmationPage()),
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
