import 'package:flutter/material.dart';

class SquareCategory extends StatelessWidget {
  final String title;
  final Color color;
  final String image;

  const SquareCategory({ super.key, required this.title, required this.color, required this.image });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
        height: 100,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0.0, 0.0),
              child: SizedBox(
                width: 100,
                height: 60,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    )
                  ),
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
}