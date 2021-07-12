import 'package:app/app/view/components/default_button.dart';
import 'package:app/core/theme/app_icons.dart';
import 'package:app/core/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultAlertDialog {
  static Future show(
          {@required BuildContext context,
          @required List<DefaultButton> listButtons,
          @required String title,
          @required String description,
          bool barrierDismissible = false,
          String icon}) =>
      showDialog(
          context: context,
          barrierDismissible: barrierDismissible,
          builder: (context) => Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                insetPadding: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 28, right: 28, left: 28, top: 28),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppIcon(
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        color: primaryColor,
                        icon: icon ?? AppIcons.information,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 28),
                      Row(
                          mainAxisAlignment: listButtons.length > 1
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.center,
                          children: listButtons
                              .map((button) => Flexible(child: button))
                              .toList())
                    ],
                  ),
                ),
              ));

  static Future showLoading(
          {@required BuildContext context,
          @required String title,
          String icon}) =>
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                insetPadding: const EdgeInsets.all(20),
                child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 28, right: 28, left: 28, top: 28),
                    child: Row(
                      children: [
                        const CircularProgressIndicator(
                          backgroundColor: primaryColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Flexible(
                          child: Text(
                            title,
                            style: const TextStyle(color: primaryColor),
                          ),
                        )
                      ],
                    )),
              ));
}
