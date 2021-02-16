import 'package:app/app/view/components/default_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme/colors.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 414,
            height: 190,
            color: grey900,
            child: Container(
              width: 207,
              height: 190,
              // alignment: Alignment.Center,
              child: Image.asset(
                  'assets/image/fusca-png-3-Transparent-Images 2.png'),
            ),
          ),
          ListTile(
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
            'KM rodados: 854.901',
            style: TextStyle(fontSize: 20),
          ),
          Container(height: 15),
          ListTile(
            title: Text('R\u0024 500,00:',
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
    );
  }
}
