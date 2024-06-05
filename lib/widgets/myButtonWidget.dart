import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final Color textColor;
  final BorderSide topBorder;
  final BorderSide leftBorder;
  final BorderSide rightBorder;
  final BorderSide bottomBorder;
  final BorderSide innerTopBorder;
  final BorderSide innerLeftBorder;
  final BorderSide innerRightBorder;
  final BorderSide innerBottomBorder;
  final VoidCallback? onPressed; // Added onPressed callback

  const MyButton({
    Key? key,
    required this.label,
    this.padding = const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
    this.backgroundColor = Colors.grey,
    this.textColor = Colors.black,
    this.topBorder = const BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
    this.leftBorder = const BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
    this.rightBorder = const BorderSide(width: 1.0, color: Color(0xFFFF000000)),
    this.bottomBorder =
        const BorderSide(width: 1.0, color: Color(0xFFFF000000)),
    this.innerTopBorder =
        const BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
    this.innerLeftBorder =
        const BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
    this.innerRightBorder =
        const BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
    this.innerBottomBorder =
        const BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Handle the tap event
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: topBorder,
            left: leftBorder,
            right: rightBorder,
            bottom: bottomBorder,
          ),
        ),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            border: Border(
              top: innerTopBorder,
              left: innerLeftBorder,
              right: innerRightBorder,
              bottom: innerBottomBorder,
            ),
            color: backgroundColor,
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
