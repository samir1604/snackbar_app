import 'package:flutter/material.dart';

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
  });

  /// Lista de pestañas a mostrar.
  final List<Tab> tabs;

  /// Lista de vistas de contenido correspondientes a cada pestaña.
  final List<Widget> children;

  ///Controlador para las pestañas
  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          TabBar(
            tabs: tabs,
            controller: controller,
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}