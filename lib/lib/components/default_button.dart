import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Color color;
  final Text text;
  final void Function()? onTap;

  const DefaultButton(
      {super.key,
      required this.color,
      required this.onTap,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: text
            ),
          ),
        ),
      );
  }
}
