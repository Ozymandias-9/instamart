import 'package:flutter/material.dart';

import 'package:tests/src/features/home/screens/promo_carrousel.dart';
import '/src/features/components/title_bar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleBar(title: "Detalles del producto"),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 200,
                              left: (MediaQuery.of(context).size.width - 150) / 2,
                              child: Container(
                                width: 150,
                                height: 5,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(Radius.elliptical(100, 100)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), 
                                    )
                                  ]
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 25,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 50,
                                height: 200,
                                child: Image.network("https://static.wixstatic.com/media/b8d64b_cdd32f53ccca45f5955b3e69c2498916~mv2.png/v1/fill/w_560,h_376,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b8d64b_cdd32f53ccca45f5955b3e69c2498916~mv2.png")
                              )
                            ),
                          ]
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text("Descuento:", style: TextStyle(fontWeight: FontWeight.w600),),
                              const SizedBox(width: 10,),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent[100],
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Text("${10}%",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ),
                            ],
                          ),
                          SizedBox(
                              width: 150,
                              height: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.remove),
                                    Text('1'),
                                    Icon(Icons.add),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          foregroundColor: Colors.black
                        ),
                        onPressed: () {},
                        child: const Text("Agregar al carrito")
                      ),
                      const SizedBox(height: 10),
                      Text("Papa blanca", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w600
                      )),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: "\$${(10 * (100 - 0)) / 100} ", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                        color: Theme.of(context).colorScheme.primary,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                                    TextSpan(text: "/ ${'1kg'}", style: Theme.of(context).textTheme.titleMedium!)
                                  ]
                                )
                              ),
                              const SizedBox(width: 15,),
                              Text("\$${12.5}", style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                color: Colors.grey[600],
                                decoration: TextDecoration.lineThrough
                              ))
                              
                            ],
                          ),
                          Text("DISPONIBLE", style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Text("Artículos relacionados", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const PromoCarrousel()
                    ],
                  ),
                ),
              ),
              // const CustomAppBar(),
            ]
          ),
        ),
      ),
    );
  }
}