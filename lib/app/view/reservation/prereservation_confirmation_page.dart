import 'package:app/app/controller/branch/branch_controller.dart';
import 'package:app/app/controller/home/home_controller.dart';
import 'package:app/app/controller/reservation/reservation_controller.dart';
import 'package:app/app/model/branch/branch.dart';
import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/login/auth.dart';
import 'package:app/app/model/reservation/reservation.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/core/theme/colors.dart';
import 'package:app/core/utils/date_parser.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_icons.dart';

class PreReservationConfirmationPage extends StatefulWidget {
  final VehicleSummary vehicleSummary;

  const PreReservationConfirmationPage({Key key, this.vehicleSummary})
      : super(key: key);

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
  int _selectedBranch = 0;
  Branch _selectedBranchData;

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
                              ? Text(
                                  "${DateParser.getDateString(selectedDate)}",
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
                  !widget.vehicleSummary.carroParceiro
                      ? Container(
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
                        )
                      : Text(
                          "Este caro está disponível apenas na seguinte filial:",
                          style: TextStyle(
                              fontSize: 20,
                              color: primaryColor,
                              fontWeight: FontWeight.w500)),
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
                        FutureBuilder<List<Branch>>(
                          future: BranchController().getBranchs(context),
                          builder: (context, snapshot) {
                            if (snapshot.hasData && !snapshot.hasError) {
                              if (_selectedBranchData == null) {
                                _selectedBranchData = snapshot.data.first;
                              }
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 29),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: grey600, width: 1)),
                                child: DropdownButton(
                                  underline: Container(),
                                  hint: Text("Escolha a filial"),
                                  value: _selectedBranch,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedBranch = value;
                                      _selectedBranchData =
                                          snapshot.data[value];
                                    });
                                  },
                                  items: List.generate(snapshot.data.length,
                                      (index) {
                                    if (!widget.vehicleSummary.carroParceiro) {
                                      return DropdownMenuItem(
                                        value: index,
                                        child: Text(
                                            "${snapshot.data[index].nome}"),
                                      );
                                    } else {
                                      String nome = '';
                                      for (var item in snapshot.data) {
                                        if (item.id ==
                                            widget.vehicleSummary.filial) {
                                          nome = item.nome;
                                        }
                                      }
                                      return DropdownMenuItem(
                                        value: index,
                                        child: Text(nome),
                                      );
                                    }
                                  }),
                                ),
                              );
                            } else {
                              return CircularProgressIndicator(
                                backgroundColor: primaryColor,
                              );
                            }
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
                      onTap: () async {
                        Auth auth = await HomeController().getUser();
                        await ReservationController().createReservation(context,
                            reservation: Reservation(
                              dataRetirada: selectedDate,
                              vehicle: widget.vehicleSummary,
                              user: auth,
                            ),
                            branch: _selectedBranchData,
                            vehicleSummary: widget.vehicleSummary,
                            location: _selectedLocation);
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
