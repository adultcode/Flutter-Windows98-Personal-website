import 'package:flutter/material.dart';
import 'package:hesam/core/constants/app_color.dart';

import '../../../core/constants/margin_size.dart';


class SimpleButton extends StatefulWidget {
  final String title;
  final VoidCallback onClick;

  const SimpleButton({required this.title, required this.onClick, Key? key}) : super(key: key);

  @override
  State<SimpleButton> createState() => _SimpleButtonState();
}

class _SimpleButtonState extends State<SimpleButton> {
  bool isPressed = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() => isPressed = true);
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() => isPressed = false);
    widget.onClick();
  }

  void _handleTapCancel() {
    setState(() => isPressed = false);
  }

  @override
  Widget build(BuildContext context) {
    final borderColor = isPressed ? Colors.black : Colors.black;
    final innerBorderColor = isPressed ? Colors.black : AppColor.darkGrey;
    final topLeftColor = isPressed ? Colors.white70 : Colors.white;
    final innerTopLeftColor = isPressed ? AppColor.lightGrey.withOpacity(0.7) : AppColor.lightGrey;

    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: borderColor, width: MarginSize.buttonBorder),
            right: BorderSide(color: borderColor, width: MarginSize.buttonBorder),
            top: BorderSide(color: topLeftColor, width: MarginSize.buttonBorder),
            left: BorderSide(color: topLeftColor, width: MarginSize.buttonBorder),
          ),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: innerBorderColor, width: isPressed?0.0:MarginSize.buttonBorder),
              right: BorderSide(color: innerBorderColor, width: isPressed?0.0:MarginSize.buttonBorder),
              top: BorderSide(color: innerTopLeftColor, width: isPressed?0.0:MarginSize.buttonBorder),
              left: BorderSide(color: innerTopLeftColor, width: isPressed?0.0:MarginSize.buttonBorder),
            ),
          ),
          child: Text(widget.title),
        ),
      ),
    );
  }
}