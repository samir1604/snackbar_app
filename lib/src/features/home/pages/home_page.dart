import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snackbar_ui/snackbar_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: context.blockSizeVertical(30),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/header-image.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.black,
              child: SvgPicture.asset(
                'assets/icons/icon-menu.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
