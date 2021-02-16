import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/core/utils/theme/colors.dart';
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
            Container(
              width: 414,
              height: 190,
              color: grey900,
              child: Container(
                width: 207,
                height: 190,
                // alignment: Alignment.Center,
                child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/f098/ebbb/d4f6510b0503d83c7f4c18d88153bacd?Expires=1614556800&Signature=Yo9bMA62Ol~5jvcldO-WozAGbVioepLtiqWdfPD7QOkuMNnh2Uz4pGwgj5apyiQccmIpoVla5IvhoeaO30zAqDZy-5pIxfAOg9zRpNW4muoYU9GpMJHZiXJn9fa4E6ZT6BaWBah~xjMggOwnViSKwF38rYtYCPoUf0nMLw~IWoyGvjc8lwHyNNqq7ji2zUKHvPjJeFwXZ~XqPSNQsFQwn1FowaXdLPM-UOxrC4C2OnZalnH-F6mJF1JSRtFEcTo3iZ6VAbQIWme3ssNVlqWWs7l6uj8oRXP~B1bMQQggjSqqJRY1s9MfASjJIOTA7hAUQtVlCVHIRh0hsBxYSXR7zQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
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
                    height: 13,
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
                  Container(height: 10),
                  Text(
                    'KM rodados: 854.901',
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(height: 15),
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
                    height: 25,
                  ),
                  Center(
                    child: FlatButton(
                      height: 58,
                      minWidth: 350,
                      child: Text(
                        "RESERVAR",
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
