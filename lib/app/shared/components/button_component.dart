import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Function() onPressed;
  final IconData? icon;
  final bool? needIcon;
  final bool? needBorder;
  final Color background;
  final Color? textColor;
  final String text;

  const ButtonComponent({
    super.key,
    required this.onPressed,
    required this.background,
    required this.text,
    this.needIcon,
    this.icon,
    this.textColor,
    this.needBorder,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: needBorder != null ? Border.all() : null,
          color: background,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              needIcon != null
                  ? Icon(icon, color: textColor)
                  : const SizedBox.shrink(),
              needIcon != null
                  ? const SizedBox(width: 10)
                  : const SizedBox.shrink(),
              Text(
                text,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
