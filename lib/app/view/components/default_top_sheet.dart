import 'package:app/app/controller/login/login_controller.dart';
import 'package:app/app/model/login/auth.dart';
import 'package:app/app/view/historic/historic_page.dart';
import 'package:app/app/view/home/home_page.dart';
import 'package:app/app/view/partner/register_vehicle/register_vehicles_options_page.dart';
import 'package:app/core/theme/app_icons.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class DefaultTopSheetWidget extends StatelessWidget {
  final Auth user;

  const DefaultTopSheetWidget({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Card(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(
                  height: 46,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 33),
                      child: InkWell(
                        child: AppIcons.back.icon(color: primaryColor),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 43),
                      child: Text(
                        "LOCAR",
                        style: TextStyle(color: primaryColor, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 94,
                ),
                ItemTopSheet(
                  icon: AppIcons.home,
                  title: "Home",
                  isBlue: true,
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false);
                  },
                ),
                if (user.partner)
                  ItemTopSheet(
                    icon: AppIcons.car,
                    title: "Cadastrar Veículo",
                    isBlue: false,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterVehiclesOptionsPage(),
                          ));
                    },
                  ),
                ItemTopSheet(
                  icon: AppIcons.reservation,
                  title: "Reservas",
                  isBlue: user.partner,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HistoricPage(),
                        ));
                  },
                ),
                ItemTopSheet(
                  icon: AppIcons.logout,
                  title: "Sair",
                  isBlue: !user.partner,
                  onTap: () async {
                    await LoginController().logout(context: context);
                  },
                ),
                SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ItemTopSheet extends StatelessWidget {
  final String icon;
  final String title;
  final Function onTap;
  final bool isBlue;

  const ItemTopSheet({Key key, this.icon, this.title, this.isBlue, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 64,
        width: double.maxFinite,
        color: isBlue ? blueLight : backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon(
              icon: icon,
              color: primaryColor,
              height: 19,
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              title,
              style: TextStyle(
                color: primaryColor,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DefaultTopSheet {
  static Future<void> show(BuildContext context, {Auth user}) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 500),
      barrierLabel: MaterialLocalizations.of(context).dialogLabel,
      barrierColor: Colors.transparent,
      pageBuilder: (context, _, __) {
        return DefaultTopSheetWidget(
          user: user,
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut,
          ).drive(Tween<Offset>(
            begin: Offset(0, -1.0),
            end: Offset.zero,
          )),
          child: child,
        );
      },
    );
  }
}
