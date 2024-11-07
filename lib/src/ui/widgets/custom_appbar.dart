// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.primaryColor,
      title: Image.asset(
        'assets/images/logo.png',
        height: 40,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomAppBarEmpty extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.primaryColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(10);
}
