import 'package:flutter/material.dart';

import '../enums/tab_bar_position.dart';

/// {@template tabs}
/// Una molécula que representa un conjunto de pestañas para navegar entre diferentes vistas de contenido.
/// {@endtemplate}
class Tabs extends StatelessWidget {
  /// {@macro tabs}
  const Tabs({
    super.key,
    required this.tabs,
    required this.children,
    this.controller,
    this.isDarkMode = false,
    this.indicatorColor,
    this.tabStyle,
    this.tabBarPosition = TabBarPosition.top,
  });

  /// Lista de pestañas a mostrar.
  final List<Tab> tabs;

  /// Lista de vistas de contenido correspondientes a cada pestaña.
  final List<Widget> children;

  ///Controlador para las pestañas
  final TabController? controller;

  ///Define si se esta usando el modo oscuro
  final bool isDarkMode;

  /// Define el color de la barra inferior
  final Color? indicatorColor;

  /// Permite personalizar el estilo de los tabs
  final TextStyle? tabStyle;

  /// Posiciona la tab bar arriba o abajo
  final TabBarPosition tabBarPosition;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          if (tabBarPosition == TabBarPosition.top)
            TabBar(
              tabs: tabs,
              controller: controller,
              indicatorColor: indicatorColor ?? primaryColor,
              labelStyle: tabStyle,
            ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: children,
            ),
          ),
          if (tabBarPosition == TabBarPosition.bottom)
            TabBar(
                tabs: tabs,
                controller: controller,
                indicatorColor: indicatorColor ?? primaryColor,
                labelStyle: tabStyle)
        ],
      ),
    );
  }
}
