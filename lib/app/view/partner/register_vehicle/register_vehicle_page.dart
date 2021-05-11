import 'package:app/app/controller/home/home_controller.dart';
import 'package:app/app/controller/partner/vehicle/register_vehicle_controller.dart';
import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/login/auth.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/components/default_text_form_field.dart';
import 'package:app/app/view/components/vehicle_with_background_component.dart';
import 'package:app/core/theme/app_icons.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class RegisterVehiclePage extends StatefulWidget {
  final int type;

  const RegisterVehiclePage({Key key, this.type}) : super(key: key);
  @override
  _RegisterVehiclePageState createState() => _RegisterVehiclePageState();
}

class _RegisterVehiclePageState extends State<RegisterVehiclePage> {
  var brandTextController = TextEditingController();
  var modelTextController = TextEditingController();
  var yearTextController = TextEditingController();
  var kmTextController = TextEditingController();
  var valueTextController = TextEditingController();
  var placaTextController = TextEditingController();
  var corTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        iconBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VehicleWithBackgroundComponent(
              url: "https://img.icons8.com/plasticine/2x/car--v2.png",
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      controller: brandTextController,
                      labelText: "MARCA",
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  Expanded(
                    child: DefaultTextFormField(
                      controller: modelTextController,
                      labelText: "MODELO",
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      controller: yearTextController,
                      labelText: "ANO",
                      type: TextInputType.number,
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  Expanded(
                    child: DefaultTextFormField(
                      controller: kmTextController,
                      labelText: "KM RODADOS",
                      type: TextInputType.number,
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      controller: placaTextController,
                      labelText: "PLACA",
                      type: TextInputType.text,
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  Expanded(
                    child: DefaultTextFormField(
                      controller: corTextController,
                      labelText: "COR",
                      type: TextInputType.text,
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  AppIcons.cash.icon(color: primaryColor, height: 18),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Valor",
                    style: TextStyle(color: primaryColor, fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29, vertical: 33),
              child: DefaultTextFormField(
                controller: valueTextController,
                labelText: "VALOR DA DIÁRIA",
                type: TextInputType.number,
                onChanged: (value) => setState(() {}),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29, vertical: 33),
              child: DefaultButton(
                title: "CADASTRAR",
                onTap: isFormValid()
                    ? () async {
                        Auth user = await HomeController().getUser();
                        RegisterVehicleController().registerVehicle(context,
                            vehicle: VehicleSummary(
                                ano: int.parse(yearTextController.text),
                                carroParceiro: true,
                                chassi: "N/A",
                                cor: corTextController.text,
                                cpfParceiro: user.cpf,
                                filial: 0,
                                marca: brandTextController.text,
                                modelo: modelTextController.text,
                                numeroPortas: 0,
                                placa: placaTextController.text,
                                potencia: 0,
                                quilometragem: int.parse(kmTextController.text),
                                renavan: 0,
                                tipoCombustivel: widget.type,
                                valorLocacao:
                                    double.parse(valueTextController.text)));
                      }
                    : null,
              ),
            )
          ],
        ),
      ),
    );
  }

  bool isFormValid() {
    return brandTextController.text.isNotEmpty &&
        modelTextController.text.isNotEmpty &&
        yearTextController.text.isNotEmpty &&
        kmTextController.text.isNotEmpty &&
        corTextController.text.isNotEmpty &&
        placaTextController.text.isNotEmpty &&
        valueTextController.text.isNotEmpty;
  }
}
