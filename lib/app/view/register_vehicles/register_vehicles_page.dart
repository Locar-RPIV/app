import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class RegisterVehiclesPage extends StatefulWidget {
  @override
  _RegisterVehiclesPageState createState() => _RegisterVehiclesPageState();
}

class _RegisterVehiclesPageState extends State<RegisterVehiclesPage> {
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

            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Container(
            //       color: Colors.blue,
            //       height: 155,
            //       width: 155,
            //     ),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     Container(
            //       color: Colors.orange,
            //       height: 155,
            //       width: 155,
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Container(
            //       color: Colors.blue,
            //       height: 155,
            //       width: 155,
            //     ),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     Container(
            //       color: Colors.orange,
            //       height: 155,
            //       width: 155,
            //     ),
            //   ],
            // ),

            // ButtonBar(
            //   children: <Widget>[
            //     FlatButton(
            //       height: 155,
            //       minWidth: 155,
            //       child: Text('Ok'),
            //       color: Colors.blue,
            //       onPressed: () {/** */},
            //     ),
            //     FlatButton(
            //       height: 155,
            //       minWidth: 155,
            //       child: Text('Cancel'),
            //       color: Colors.blue,
            //       onPressed: () {/** */},
            //     ),
            //   ],
            // ),
            // ButtonBar(
            //   children: <Widget>[
            //     FlatButton(
            //       height: 155,
            //       minWidth: 155,
            //       child: Text('Ok'),
            //       color: Colors.blue,
            //       onPressed: () {/** */},
            //     ),
            //     FlatButton(
            //       height: 155,
            //       minWidth: 155,
            //       child: Text('Cancel'),
            //       color: Colors.blue,
            //       onPressed: () {/** */},
            //     ),
            //   ],
            // )

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     FlatButton(
            //         height: 155,
            //         minWidth: 155,
            //         color: Colors.blue,
            //         onPressed: () {},
            //         child: Icon(
            //           Icons.call,
            //         )),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     FlatButton(
            //         height: 155,
            //         minWidth: 155,
            //         color: Colors.blue,
            //         onPressed: () {},
            //         child: Icon(
            //           Icons.message,
            //         )),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     FlatButton(
            //         height: 155,
            //         minWidth: 155,
            //         color: Colors.blue,
            //         onPressed: () {},
            //         child: Icon(
            //           Icons.call,
            //         )),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     FlatButton(
            //         height: 155,
            //         minWidth: 155,
            //         color: Colors.blue,
            //         onPressed: () {},
            //         children
            //         child: Icon(
            //           Icons.message,
            //         )),
            //   ],
            // ),

            //ESSE
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
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
                          color: Colors.black26,
                          offset: Offset(0, 0),
                          blurRadius: 10.0,
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
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
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
                          color: Colors.black26,
                          offset: Offset(0, 0),
                          blurRadius: 10.0,
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
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
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
                          color: Colors.black26,
                          offset: Offset(0, 0),
                          blurRadius: 10.0,
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
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
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
                          color: Colors.black26,
                          offset: Offset(0, 0),
                          blurRadius: 10.0,
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

            // Row(
            //   children: [
            //     Container(
            //       width: 155,
            //       height: 155,
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //           colors: [
            //             Colors.white,
            //             Colors.white,
            //           ],
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //         ),
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(8.0),
            //           bottomLeft: Radius.circular(8.0),
            //           bottomRight: Radius.circular(8.0),
            //           topRight: Radius.circular(8.01),
            //         ),
            //         boxShadow: <BoxShadow>[
            //           BoxShadow(
            //             color: Colors.black26,
            //             offset: Offset(0, 0),
            //             blurRadius: 10.0,
            //           ),
            //         ],
            //       ),
            //       child: Center(
            //         child: Container(
            //           child: Text('Carros',
            //               style: TextStyle(fontSize: 20, color: primaryColor)),
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 20),
            //     Container(
            //       width: 155,
            //       height: 155,
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //           colors: [
            //             Colors.white,
            //             Colors.white,
            //           ],
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //         ),
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(8.0),
            //           bottomLeft: Radius.circular(8.0),
            //           bottomRight: Radius.circular(8.0),
            //           topRight: Radius.circular(8.01), // FLUTTER BUG FIX
            //         ),
            //         boxShadow: <BoxShadow>[
            //           BoxShadow(
            //             color: Colors.black26,
            //             offset: Offset(0, 0),
            //             blurRadius: 10.0,
            //           ),
            //         ],
            //       ),
            //       child: Center(
            //         child: Container(
            //           child: Text('Ônibus'),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            // SizedBox(
            //   height: 20,
            // ),

            // Row(
            //   children: [
            //     Container(
            //       width: 155,
            //       height: 155,
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //           colors: [
            //             Colors.white,
            //             Colors.white,
            //           ],
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //         ),
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(8.0),
            //           bottomLeft: Radius.circular(8.0),
            //           bottomRight: Radius.circular(8.0),
            //           topRight: Radius.circular(8.01), // FLUTTER BUG FIX
            //         ),
            //         boxShadow: <BoxShadow>[
            //           BoxShadow(
            //             color: Colors.black26,
            //             offset: Offset(0, 0),
            //             blurRadius: 10.0,
            //           ),
            //         ],
            //       ),
            //       child: Center(
            //         child: Container(
            //           child: Text('Bicicleta'),
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 20),
            //     Container(
            //       width: 155,
            //       height: 155,
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //           colors: [
            //             Colors.white,
            //             Colors.white,
            //           ],
            //           begin: Alignment.topLeft,
            //           end: Alignment.bottomRight,
            //         ),
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(8.0),
            //           bottomLeft: Radius.circular(8.0),
            //           bottomRight: Radius.circular(8.0),
            //           topRight: Radius.circular(8.01), // FLUTTER BUG FIX
            //         ),
            //         boxShadow: <BoxShadow>[
            //           BoxShadow(
            //             color: Colors.black26,
            //             offset: Offset(0, 0),
            //             blurRadius: 10.0,
            //           ),
            //         ],
            //       ),
            //       child: Center(
            //         child: Container(
            //           child: Text('Motocicleta'),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
