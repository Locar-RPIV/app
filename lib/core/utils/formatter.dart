import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class Formatter {
  static String moneySettings(String value, {String leadingSymbol = 'R\$'}) {
    return toCurrencyString(value,
        leadingSymbol: leadingSymbol,
        useSymbolPadding: true,
        mantissaLength: 2,
        thousandSeparator: ThousandSeparator.Period,
        shorteningPolicy: ShorteningPolicy.NoShortening);
  }
}
