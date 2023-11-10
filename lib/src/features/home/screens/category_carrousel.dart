import 'package:flutter/material.dart';

import 'carrousel_elements.dart';

class CategoryCarrousel extends StatelessWidget {
  const CategoryCarrousel({ super.key });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 220,
            height: 220,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 100,
                    width: 220,
                    child: Stack(
                      children: [
                        Transform.translate(
                          offset: const Offset(70.0, 0.0),
                          child: SizedBox(
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/img/vegetables.png'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Vegetales', style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
                Row(
                  children: [
                    SquareCategory(title: 'Pan', color: Colors.yellow[100] as Color, image: 'assets/img/bakery.png'),
                    SquareCategory(title: 'Mariscos', color: Colors.blue[100] as Color, image: 'assets/img/seafood.png'),
                  ]
                )
              ]
            ),
          ),
          SizedBox(
            width: 220,
            height: 220,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 210,
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Frutas', style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0.0, 0.0),
                          child: SizedBox(
                            width: 100,
                            height: 150,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  alignment: Alignment.topCenter,
                                  image: AssetImage('assets/img/fruits.png'),
                                  fit: BoxFit.cover,
                                )
                              ),
                            )
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
                Column(
                  children: [
                    SquareCategory(title: 'Bebidas', color: Colors.orange[100] as Color, image: 'assets/img/drinks.png'),
                    SquareCategory(title: 'Lácteos', color: Colors.grey[100] as Color, image: 'assets/img/dairy.png'),
                  ]
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}