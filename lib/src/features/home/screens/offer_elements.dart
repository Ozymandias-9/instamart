import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  final String text;
  final Color color;
  final String image;
  
  const Offer({ super.key, required this.text, required this.color, required this.image });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 100,
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
        ),
        child: Stack(
          children: [
            Transform.translate(
              offset: const Offset(0.0, 40.0),
              child: SizedBox(
                width: 200,
                height: 100,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                ),
                textAlign: TextAlign.left,
                TextSpan(
                  children: [
                    TextSpan(text: text),
                    const WidgetSpan(child: SizedBox(width: 4,)),
                    const WidgetSpan(child: Icon(Icons.arrow_circle_right_outlined, color: Colors.white),),
                  ],
                )
              ),
            )
          ]
        ),
      )
    );
  }
}