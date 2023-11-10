import 'package:flutter/material.dart';

class TextTag extends StatelessWidget {
  final String content;
  
  const TextTag({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text(content, style: const TextStyle(fontWeight: FontWeight.w500)),
            ),
            const SizedBox(width: 10,)
          ],
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}

class ImageTextTag extends StatelessWidget {
  final String image;
  final String content;
  
  const ImageTextTag({super.key, required this.image, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 2, bottom: 2, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: [
                  SizedBox(width: 50, height: 50, child: Image.network(image)),
                  const SizedBox(width: 5,),
                  Text(content, style: const TextStyle(fontWeight: FontWeight.w500)),
                ],
              )
            ),
            const SizedBox(width: 10,)
          ],
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}