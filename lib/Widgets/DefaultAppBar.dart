import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const DefaultAppBar(this.title) : assert(title != null);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(title),),
      backgroundColor: Colors.deepPurple,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search , color: Colors.white,), onPressed: (){})
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}


