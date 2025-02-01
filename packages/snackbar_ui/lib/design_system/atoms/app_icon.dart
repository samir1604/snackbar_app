import 'package:flutter/material.dart';

import '../foundations/app_colors.dart';
import '../foundations/app_sizes.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.icon,
    this.color,
    this.size,
    this.isDarkMode = false,
  });

  const AppIcon.arrowBack(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.arrow_back;

  const AppIcon.arrowForward(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.arrow_forward;

  const AppIcon.menu(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.menu;

  const AppIcon.close(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.close;

  const AppIcon.add({super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.add;

  const AppIcon.remove(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.remove;

  const AppIcon.edit(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.edit;

  const AppIcon.delete(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.delete;

  const AppIcon.search(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.search;

  const AppIcon.share(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.share;

  const AppIcon.favorite(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.favorite;

  const AppIcon.check(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.check;

  const AppIcon.radioChecked(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.radio_button_checked;

  const AppIcon.radioUnchecked(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.radio_button_unchecked;

  const AppIcon.error(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.error;

  const AppIcon.warning(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.warning;

  const AppIcon.home(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.home;

  const AppIcon.settings(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.settings;

  const AppIcon.person(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.person;

  const AppIcon.password(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.lock_open_outlined;

  const AppIcon.shoppingCart(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.shopping_cart;

  const AppIcon.notifications(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.notifications;

  const AppIcon.locationOn(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.location_on;

  const AppIcon.call(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.call;

  const AppIcon.visible(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.visibility;

  const AppIcon.unVisible(
      {super.key, this.color, this.size, this.isDarkMode = false})
      : icon = Icons.visibility_off;

  final IconData icon;
  final Color? color;
  final double? size;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) => Icon(
        icon,
        color: color ?? AppColors.disabled,
        size: size ?? AppSizes.iconMd,
      );
}
