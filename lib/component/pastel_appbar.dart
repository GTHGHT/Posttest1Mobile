import 'package:flutter/material.dart';

class PastelAppBar extends StatelessWidget implements PreferredSizeWidget {
  // Property untuk anak dari Appbar
  final Widget? child;

  const PastelAppBar({this.child});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: child,
      // Mengecek apakah perlu ditampilkan back button pada appbar
      leading: Navigator.canPop(context)
          ? IconButton(
              icon: Icon(
                Icons.navigate_before_rounded,
                color: Colors.black,
                size: 40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}