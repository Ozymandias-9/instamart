import "package:flutter/material.dart";

class TitleBar extends StatelessWidget {
  final String title;
  const TitleBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.chevron_left, size: 30,),
          ),
          const SizedBox(width: 20),
          Text(title, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}