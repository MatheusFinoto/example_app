import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key,
      required this.onTap,
      required this.iconData,
      this.color,
      this.iconColor,
      this.imgPath});

  final VoidCallback onTap;
  final IconData iconData;
  final Color? color;
  final Color? iconColor;
  final String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: color ?? Colors.green.withOpacity(0.4),
          borderRadius: BorderRadius.circular(50)),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onTap,
        child: Center(
          child: imgPath != null
              ? Image.asset(
                  scale: 2.5,
                  imgPath!,
                  height: 45,
                  width: 45,
                  fit: BoxFit.scaleDown,
                )
              : Icon(
                  iconData,
                  color: iconColor ?? Colors.white,
                ),
        ),
      ),
    );
  }
}
