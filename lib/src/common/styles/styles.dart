import 'package:flutter/material.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

final class Styles {
  const Styles._();

  static TextStyle? get toastTitle =>
      AppStyles.bodySM(textColor:  Colors.black);

  static TextStyle? get toastMessage =>
      AppStyles.labelXS(textColor:  Colors.black);

  static TextStyle? get toastErrors =>
      AppStyles.labelXXS(textColor:  Colors.black54);
}
