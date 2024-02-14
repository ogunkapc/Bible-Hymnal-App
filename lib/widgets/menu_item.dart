import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.iconPath,
    required this.title,
    this.destination,
  });

  final String iconPath;
  final String title;
  final Widget? destination;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => destination!,
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Row(
          children: [
            Image.asset(iconPath),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
