import 'package:flutter/material.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

final class Styles {
  const Styles._();

  static TextStyle? get snackBarTitle =>
      AppStyles.labelXS(textColor:  Colors.white);

  static TextStyle? get snackBarMessage =>
      AppStyles.labelXXS(textColor:  Colors.white);
}
