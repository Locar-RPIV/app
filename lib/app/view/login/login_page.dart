import 'package:app/app/controller/login/login_controller.dart';
import 'package:app/app/view/components/default_button.dart';
import 'package:app/app/view/components/default_text_form_field.dart';
import 'package:app/core/theme/app_icons.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var controller = LoginController();
  var emailTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 49.0, top: 20),
            child: Center(
              child: Text(
                "LOCAR",
                style: TextStyle(color: primaryColor, fontSize: 20),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: AppIcons.login
                  .icon(fit: BoxFit.cover, height: size.height / 3),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, right: 50, left: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  DefaultTextFormField(
                    hintText: "USUÁRIO",
                    controller: emailTextController,
                    errorText: controller.errorText,
                    type: TextInputType.emailAddress,
                    onChanged: (value) {
                      setState(() {
                        if (value.length > 5) {
                          print("ta entrando aqui");
                          controller.isEmailValid(value);
                        } else {
                          controller.errorText = null;
                        }
                      });
                    },
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  DefaultTextFormField(
                    hintText: "SENHA",
                    controller: passwordTextController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    isPassword: true,
                  ),
                  SizedBox(
                    height: 53,
                  ),
                  DefaultButton(
                    title: "LOGIN",
                    onTap: controller.isEmailValid(emailTextController.text,
                                byTextField: false) &&
                            passwordTextController.text.length > 0
                        ? () {
                            Navigator.pushNamed(context, "/");
                          }
                        : null,
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text.rich(
                    TextSpan(
                        text: "ou ",
                        style: TextStyle(
                            color: grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w100),
                        children: [
                          TextSpan(
                              text: "cadastre-se ",
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: "aqui",
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100))
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
