import 'package:app/app/view/components/default_app_bar.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/components/default_text_form_field.dart';
import 'package:app/app/view/components/vehicle_with_background_component.dart';
import 'package:app/core/theme/app_icons.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class RegisterVehiclePage extends StatefulWidget {
  @override
  _RegisterVehiclePageState createState() => _RegisterVehiclePageState();
}

class _RegisterVehiclePageState extends State<RegisterVehiclePage> {
  var brandTextController = TextEditingController();
  var modelTextController = TextEditingController();
  var yearTextController = TextEditingController();
  var kmTextController = TextEditingController();
  var valueTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VehicleWithBackgroundComponent(
              url: "https://s3-alpha-sig.figma.com/img/401f/cb42/86b7085d065f05353c5a628c4be37ad8?Expires=1615161600&Signature=NXvAaLac5Vkq~vqxPXI7xSrP2gtNGPbyVVRFDT0s8O4WGQ~oitw7SHENFdmRGU9DXSkNoHgTXzLKT6sx4SaremLLqTy1F0hjUq~APaYH2pS0kfZU6Q1qUySB~hneRfPFbpf2wyvvQP2qCC8ucvd6WN~N-QivTKctJK~oLlMEo-jLy4PiKhgiUJI~fji64oTQEWVCUM8RiRk4p6Q1Lx0PH8mNWHIpHxFEDmabfkhNiuCFE1jV1kUmZ5lLZdS4rosfthtCnRp3ab~q8sSBGi3mmELIo~SyjKtr66kx2l0uDJPqi7Lx37pHOSxdXNuSQCf8jx5hJTq~7x5dAY7QSrz-eA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
            ),
            SizedBox(height: 36,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      controller: brandTextController,
                      labelText: "MARCA",
                    ),
                  ),
                  SizedBox(width: 36,),
                  Expanded(
                    child: DefaultTextFormField(
                      controller: modelTextController,
                      labelText: "MODELO",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultTextFormField(
                      controller: yearTextController,
                      labelText: "ANO",
                      type: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 36,),
                  Expanded(
                    child: DefaultTextFormField(
                      controller: kmTextController,
                      labelText: "KM RODADOS",
                      type: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29),
              child: Row(
                children: [
                  AppIcons.cash.icon(
                    color: primaryColor,
                    height: 18
                  ),
                  SizedBox(width: 18,),
                  Text(
                    "Valor",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20
                    ),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29, vertical: 33),
              child: DefaultButton(
                title: "CADASTRAR",
                onTap: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}