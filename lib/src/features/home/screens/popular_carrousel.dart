import 'package:flutter/material.dart';

import 'package:tests/src/features/components/product.dart';

class PopularCarrousel extends StatefulWidget {
  const PopularCarrousel({super.key});

  @override
  State<PopularCarrousel> createState() => _PopularCarrouselState();
}

class _PopularCarrouselState extends State<PopularCarrousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Product(name: "Lechuga", price: 10, measure: '1kg', image: "https://static.vecteezy.com/system/resources/previews/021/096/216/original/lettuce-leaf-isolated-png.png"),
          SizedBox(width: 10,),
          Product(name: "Jitomate", price: 12, measure: '1kg', image: "https://static.vecteezy.com/system/resources/previews/013/442/147/non_2x/tomatoes-on-a-transparent-background-free-png.png"),
          SizedBox(width: 10,),
          Product(name: "Chile Serrano", price: 15, measure: '1kg', image: "https://www.granodeoro.com.mx/wp-content/uploads/2020/03/chile-serrano.png"),
          SizedBox(width: 10,),
          Product(name: "Manzanas", price: 8, measure: '1kg', image: "https://assets.stickpng.com/images/580b57fbd9996e24bc43c11c.png"),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}