import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  const RightShape({super.key, required this.width, required this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
