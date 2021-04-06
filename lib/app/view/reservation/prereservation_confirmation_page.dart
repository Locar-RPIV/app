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
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateIsSelected = true;
      });
  }

  bool dateIsSelected = false;
  String _selectedLocation = '';

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
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          child: dateIsSelected
                              ? Text("${selectedDate.toLocal()}".split(' ')[0],
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black87))
                              : Text('Escolha a data',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black87)),
                          onTap: () {
                            _selectDate(context);
                          },
                        ),
                        Container(),
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
                        DropdownButton<String>(
                          hint: _selectedLocation == ''
                              ? Text('Escolha a unidade',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black87))
                              : Text(_selectedLocation,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black87)),
                          items: <String>[
                            'Unidade Alegrete',
                            'Unidade Porto Alegre',
                            'Unidade São Borja',
                            'Unidade Uruguaiana'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              _selectedLocation = newValue;
                              print(_selectedLocation);
                            });
                          },
                        ),
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
