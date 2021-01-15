import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF9CCBCB),
      title: Text(this.title,
          style: TextStyle(
            fontSize: 18,
          )),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
