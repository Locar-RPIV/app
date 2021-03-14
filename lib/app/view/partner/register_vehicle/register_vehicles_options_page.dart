import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class RegisterVehiclesOptionsPage extends StatefulWidget {
  @override
  _RegisterVehiclesOptionsPageState createState() =>
      _RegisterVehiclesOptionsPageState();
}

class _RegisterVehiclesOptionsPageState
    extends State<RegisterVehiclesOptionsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: DefaultAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 30.0, bottom: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Que tipo de veículo deseja cadastrar?',
              style: TextStyle(fontSize: 20, color: primaryColor),
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              'Aceitamos vários tipos',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 155,
                    width: 155,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topRight: Radius.circular(8.01), // FLUTTER BUG FIX
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Container(
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.directions_car,
                                  size: 50,
                                  color: primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "\n\n",
                                style: TextStyle(
                                    color: primaryColor, fontSize: 20),
                              ),
                              TextSpan(
                                text: "Carro",
                                style: TextStyle(
                                    color: primaryColor, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 155,
                    width: 155,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topRight: Radius.circular(8.01), // FLUTTER BUG FIX
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Container(
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: " ",
                                style: TextStyle(
                                    color: primaryColor, fontSize: 20),
                              ),
                              WidgetSpan(
                                child: Icon(
                                  Icons.directions_bus,
                                  size: 50,
                                  color: primaryColor,
                                ),
                              ),
                              TextSpan(
                                text: "\n\n",
                                style: TextStyle(
                                    color: primaryColor, fontSize: 20),
                              ),
                              TextSpan(
                                text: "Ônibus",
                                style: TextStyle(
                                    color: primaryColor, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 155,
                    width: 155,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topRight: Radius.circular(8.01), // FLUTTER BUG FIX
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Container(
                      child: Center(
                          child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "  ",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 20),
                            ),
                            WidgetSpan(
                              child: Icon(
                                Icons.pedal_bike_rounded,
                                size: 50,
                                color: primaryColor,
                              ),
                            ),
                            TextSpan(
                              text: "\n\n",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 20),
                            ),
                            TextSpan(
                              text: "Bicicleta",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 20),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 155,
                    width: 155,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topRight: Radius.circular(8.01), // FLUTTER BUG FIX
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 3),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Container(
                      child: Center(
                          child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "    ",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 20),
                            ),
                            WidgetSpan(
                              child: Icon(
                                Icons.two_wheeler,
                                size: 50,
                                color: primaryColor,
                              ),
                            ),
                            TextSpan(
                              text: "\n\n",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 20),
                            ),
                            TextSpan(
                              text: "Motocicleta",
                              style:
                                  TextStyle(color: primaryColor, fontSize: 20),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
