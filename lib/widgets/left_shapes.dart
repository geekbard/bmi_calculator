import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  const LeftShape({super.key,required this.width,required this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
