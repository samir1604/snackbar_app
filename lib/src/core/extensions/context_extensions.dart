import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../../common/common.dart';

extension ContextExtension on BuildContext {
  static ToastificationItem? toast;

  void showToast(
    String title,
    String message, [
    ToastType toastType = ToastType.success,
    List<String>? errors,
  ]) {
    toastification.dismissAll();

    toastification.show(
      context: this,
      title: Text(title, style: Styles.toastTitle),
      description: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(message, style: Styles.toastMessage),
          if (errors != null && errors.isNotEmpty)
            ...errors.map((error) => Text('-$error', style: Styles.toastErrors)),
        ],
      ),
      type: _getType(toastType),
      style: ToastificationStyle.flatColored,
      autoCloseDuration: const Duration(seconds: 5),
      alignment: Alignment.topRight,
      animationDuration: const Duration(milliseconds: 300),
      animationBuilder: (
        _,
        animation,
        __,
        child,
      ) =>
          SizeTransition(sizeFactor: animation, child: child),
      icon: _getIcon(toastType),
      primaryColor: _getPrimaryColor(toastType),
      backgroundColor: _getBackgroundColor(toastType),
      foregroundColor: Colors.black54,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
          color: Color(0x07000000),
          blurRadius: 16,
          offset: Offset(0, 16),
          spreadRadius: 0,
        )
      ],
      closeButtonShowType: CloseButtonShowType.always,
      showProgressBar: false,
      closeOnClick: false,
      pauseOnHover: true,
      dragToClose: true,
    );
  }

  ToastificationType _getType(ToastType type) => switch (type) {
        ToastType.success => ToastificationType.success,
        ToastType.error => ToastificationType.error,
        ToastType.info => ToastificationType.info,
        ToastType.warning => ToastificationType.warning,
      };

  Icon _getIcon(ToastType type) => switch (type) {
        ToastType.success => Icon(Icons.check_circle_outline),
        ToastType.error => Icon(Icons.cancel_outlined),
        ToastType.info => Icon(Icons.info_outline),
        ToastType.warning => Icon(Icons.warning),
      };

  Color _getPrimaryColor(ToastType type) => switch (type) {
        ToastType.success => Color(0xFF32BC32),
        ToastType.error => Color(0xFFFF3A30),
        ToastType.info => Color(0xFF47AFFF),
        ToastType.warning => Color(0xFFFFB600),
      };

  Color _getBackgroundColor(ToastType type) => switch (type) {
        ToastType.success => Color(0xFFEAF8EA),
        ToastType.error => Color(0xFFFFEBEA),
        ToastType.info => Color(0xFFEDF7FF),
        ToastType.warning => Color(0xFFFFF8E5),
      };
}
