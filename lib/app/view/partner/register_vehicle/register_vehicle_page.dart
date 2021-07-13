import 'package:app/app/controller/branch/branch_controller.dart';
import 'package:app/app/controller/home/home_controller.dart';
import 'package:app/app/controller/partner/vehicle/register_vehicle_controller.dart';
import 'package:app/app/model/branch/branch.dart';
import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/app/model/login/auth.dart';
import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/components/default_text_form_field.dart';
import 'package:app/app/view/components/vehicle_with_background_component.dart';
import 'package:app/core/theme/app_icons.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterVehiclePage extends StatefulWidget {
  final int type;

  const RegisterVehiclePage({Key key, this.type}) : super(key: key);
  @override
  _RegisterVehiclePageState createState() => _RegisterVehiclePageState();
}

class _RegisterVehiclePageState extends State<RegisterVehiclePage> {
  TextEditingController brandTextController = TextEditingController();
  TextEditingController modelTextController = TextEditingController();
  TextEditingController yearTextController = TextEditingController();
  TextEditingController kmTextController = TextEditingController();
  TextEditingController valueTextController = TextEditingController();
  TextEditingController placaTextController = TextEditingController();
  TextEditingController corTextController = TextEditingController();
  int _selectedBranch = 0;
  int _selectedBranchID = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        iconBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const VehicleWithBackgroundComponent(
              url: "https://img.icons8.com/plasticine/2x/car--v2.png",
            ),
            const SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      controller: brandTextController,
                      labelText: "MARCA",
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                  const SizedBox(
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
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
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
                  const SizedBox(
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
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      controller: placaTextController,
                      labelText: "PLACA",
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                  const SizedBox(
                    width: 36,
                  ),
                  Expanded(
                    child: DefaultTextFormField(
                      controller: corTextController,
                      labelText: "COR",
                      onChanged: (value) => setState(() {}),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  AppIcons.cash.icon(color: primaryColor, height: 18),
                  const SizedBox(
                    width: 18,
                  ),
                  const Text(
                    "Valor",
                    style: TextStyle(color: primaryColor, fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 33),
              child: DefaultTextFormField(
                controller: valueTextController,
                labelText: "VALOR DA DIÁRIA",
                type: TextInputType.number,
                onChanged: (value) => setState(() {}),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  AppIcons.cash.icon(color: primaryColor, height: 18),
                  const SizedBox(
                    width: 18,
                  ),
                  const Text(
                    "Filial",
                    style: TextStyle(color: primaryColor, fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            FutureBuilder<List<Branch>>(
              future: Modular.get<IBranchController>().getBranchs(),
              builder: (context, snapshot) {
                if (snapshot.hasData && !snapshot.hasError) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 29),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: grey600)),
                    child: DropdownButton(
                      underline: Container(),
                      hint: const Text("Escolha a filial"),
                      value: _selectedBranch,
                      onChanged: (int value) {
                        setState(() {
                          _selectedBranch = value;
                          _selectedBranchID = snapshot.data[value].id;
                        });
                      },
                      isExpanded: true,
                      items: List.generate(
                          snapshot.data.length,
                          (index) => DropdownMenuItem(
                                value: index,
                                child: Text(snapshot.data[index].nome),
                              )),
                    ),
                  );
                } else {
                  return const CircularProgressIndicator(
                    backgroundColor: primaryColor,
                  );
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 33),
              child: DefaultButton(
                title: "CADASTRAR",
                onTap: isFormValid()
                    ? () async {
                        final Auth user = await HomeController().getUser();
                        RegisterVehicleController().registerVehicle(context,
                            vehicle: VehicleSummary(
                                ano: int.parse(yearTextController.text),
                                carroParceiro: true,
                                chassi: "N/A",
                                cor: corTextController.text,
                                cpfParceiro: user.cpf,
                                filial: _selectedBranchID,
                                marca: brandTextController.text,
                                modelo: modelTextController.text,
                                numeroPortas: 0,
                                status: "Disponível",
                                placa: placaTextController.text,
                                potencia: "0",
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
