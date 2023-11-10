import 'package:flutter/material.dart';

import 'package:tests/src/features/components/product.dart';

class PromoCarrousel extends StatefulWidget {
  const PromoCarrousel({super.key});

  @override
  State<PromoCarrousel> createState() => _PromoCarrouselState();
}

class _PromoCarrouselState extends State<PromoCarrousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Product(name: "Berenjena", price: 10, measure: '1kg', discount: 10, image: "https://static.vecteezy.com/system/resources/previews/027/214/398/original/aubergine-aubergine-transparent-background-ai-generated-free-png.png"),
          SizedBox(width: 10,),
          Product(name: "Uvas", price: 12, measure: '1kg', image: "https://assets.stickpng.com/images/580b57fcd9996e24bc43c14a.png"),
          SizedBox(width: 10,),
          Product(name: "Aguacate", price: 15, measure: '1kg', image: "https://static.vecteezy.com/system/resources/previews/012/011/559/original/avocado-cut-out-transparent-background-png.png"),
          SizedBox(width: 10,),
          Product(name: "Rábano", price: 8, measure: '1kg', discount: 20, image: "https://assets.stickpng.com/thumbs/585ea83dcb11b227491c3546.png"),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}