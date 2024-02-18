import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onClick,
    required this.colorsList,
  });

  final String text;
  final void Function() onClick;
  final List<Color> colorsList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: const EdgeInsets.all(8),
        alignment: Alignment.center,
        width: 200,
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colorsList),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: 1.5,
          ),
        ),
      ),
    );
  }
}
