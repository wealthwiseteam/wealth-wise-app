import 'package:flutter/material.dart';

class PublicDivider extends StatelessWidget {
  final double? width;
  final Color? color;
  const PublicDivider({
    Key? key,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ??  Colors.grey.withOpacity(0.3),
      height: 1.5,
      width: double.infinity,
    );
  }
}
