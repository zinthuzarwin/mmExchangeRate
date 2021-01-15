import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget implements PreferredSizeWidget {
  final Color homeColor;
  final Color creditColor;
  final Color aboutColor;

  const DrawerWidget(
      {Key key, this.homeColor, this.creditColor, this.aboutColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            alignment: FractionalOffset.center,
            color: Color(0xFF9CCBCB),
            child: Text(
              'Myanmar Exchange Rate',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: this.homeColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: this.homeColor,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.create,
              color: this.creditColor,
            ),
            title: Text(
              'Credit',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: this.creditColor,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/credit');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: this.aboutColor,
            ),
            title: Text(
              'About',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: this.aboutColor,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
