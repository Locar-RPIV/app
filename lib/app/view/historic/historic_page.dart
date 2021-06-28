import 'package:app/app/controller/historic/historic_page.dart';
import 'package:app/app/controller/home/home_controller.dart';
import 'package:app/app/model/login/auth.dart';
import 'package:app/app/model/reservation/reservation.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/core/theme/colors.dart';
import 'package:app/core/utils/date_parser.dart';
import 'package:flutter/material.dart';

class HistoricPage extends StatefulWidget {
  @override
  _HistoricPageState createState() => _HistoricPageState();
}

class _HistoricPageState extends State<HistoricPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        iconBack: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Suas reservas",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            FutureBuilder<Auth>(
                future: HomeController().getUser(),
                builder: (context, snapshotUser) {
                  if (snapshotUser.hasData && !snapshotUser.hasError) {
                    return FutureBuilder<List<Reservation>>(
                      future: HistoricController()
                          .getHistoric(context, snapshotUser.data.cpf),
                      builder: (context, snapshot) {
                        if (snapshot.hasData && !snapshot.hasError) {
                          return Column(
                              children: List.generate(
                            snapshot.data.length,
                            (index) => Card(
                              child: SizedBox(
                                height: 100,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Image.network(
                                      snapshot.data[index].vehicle.imageUrl !=
                                                  null &&
                                              snapshot.data[index].vehicle
                                                  .imageUrl.isNotEmpty
                                          ? snapshot
                                              .data[index].vehicle.imageUrl
                                          : "https://img.icons8.com/plasticine/2x/car--v2.png",
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data[index].vehicle.marca,
                                          style: const TextStyle(
                                              color: primaryColor,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          snapshot.data[index].vehicle.modelo,
                                          style: const TextStyle(
                                              color: primaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Data da retirada",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          DateParser.getDateString(snapshot
                                              .data[index].dataRetirada),
                                          style: const TextStyle(
                                              color: primaryColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ));
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
