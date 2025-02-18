import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

import '../../common/common.dart';

extension ContextExtension on BuildContext {
  void showCustomSnackBar({
    required String title,
    required String message,
    ContentType type = ContentType.success,
  }) {
    final snackBar = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      duration: const Duration(milliseconds: 3000),
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: type,
        titleTextStyle: Styles.snackBarTitle,
        messageTextStyle: Styles.snackBarMessage,
      ),
    );

    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
