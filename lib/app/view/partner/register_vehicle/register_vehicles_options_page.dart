import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/partner/register_vehicle/register_vehicle_page.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class RegisterVehiclesOptionsPage extends StatefulWidget {
  @override
  _RegisterVehiclesOptionsPageState createState() =>
      _RegisterVehiclesOptionsPageState();
}

class _RegisterVehiclesOptionsPageState
    extends State<RegisterVehiclesOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const DefaultAppBar(
        iconBack: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 30.0, bottom: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Que tipo de veículo deseja cadastrar?',
              style: TextStyle(fontSize: 20, color: primaryColor),
            ),
            const SizedBox(
              height: 11,
            ),
            const Text(
              'Aceitamos vários tipos',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterVehiclePage(
                                type: 0,
                              )),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width / 2.8,
                    width: MediaQuery.of(context).size.width / 2.8,
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
                    child: SizedBox(
                      child: Center(
                        child: RichText(
                          text: const TextSpan(
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
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterVehiclePage(
                                type: 1,
                              )),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width / 2.8,
                    width: MediaQuery.of(context).size.width / 2.8,
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
                    child: SizedBox(
                      child: Center(
                        child: RichText(
                          text: const TextSpan(
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
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterVehiclePage(
                                type: 2,
                              )),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width / 2.8,
                    width: MediaQuery.of(context).size.width / 2.8,
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
                    child: SizedBox(
                      child: Center(
                          child: RichText(
                        text: const TextSpan(
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
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterVehiclePage(
                                type: 3,
                              )),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width / 2.8,
                    width: MediaQuery.of(context).size.width / 2.8,
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
                    child: SizedBox(
                      child: Center(
                          child: RichText(
                        text: const TextSpan(
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
                const SizedBox(
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
