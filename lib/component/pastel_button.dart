import 'package:flutter/material.dart';

class PastelButton extends StatelessWidget {
  final Color color;
  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry padding;
  final BoxConstraints constraints;

  const PastelButton({
    required this.child,
    this.onPressed,
    this.color = Colors.white,
    this.padding = const EdgeInsets.all(15),
    this.constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            offset: Offset(0, 1),
            spreadRadius: 1.5,
            color: Colors.black,
          ),
        ],
      ),
      child: RawMaterialButton(
        constraints: constraints,
        elevation: 0,
        padding: padding,
        fillColor: color,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: child,
      ),
    );
  }
}