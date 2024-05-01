import 'package:flutter/material.dart';

class ElegantText extends StatelessWidget {
  const ElegantText(this.text, {super.key, this.weight, this.size = 15, this.color});
  final String text;
  final FontWeight? weight;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}
