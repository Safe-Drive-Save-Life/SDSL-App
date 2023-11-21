import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title:
      Image.asset('assets/images/logo.png',
          width: 150, height: 100),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
