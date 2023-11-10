import 'package:flutter/material.dart';

import 'offer_elements.dart';

class OfferCarrousel extends StatelessWidget {
  const OfferCarrousel({ super.key });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Offer(text: '20% descuento en tu primera compra', color: Colors.red[200] as Color, image: 'assets/img/fruits.png'),
          const SizedBox(width: 10,),
          Offer(text: '20% descuento en todas los lácteos', color: Colors.grey[400] as Color, image: 'assets/img/dairy.png'),
          const SizedBox(width: 10,),
          Offer(text: '40% descuento en todos los mariscos', color: Colors.blue[200] as Color, image: 'assets/img/seafood.png'),
        ],
      ),
    );
  }
}