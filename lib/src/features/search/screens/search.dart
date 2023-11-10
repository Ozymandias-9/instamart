import 'package:flutter/material.dart';

import 'package:tests/src/features/home/screens/popular_carrousel.dart';
import 'package:tests/src/features/components/custom_app_bar.dart';
import 'package:tests/src/features/components/tags.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child:  Container(
                            padding: const EdgeInsets.only(left: 8.0, right: 20.0, bottom: 2.5),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide.none
                                      ),
                                      prefixIcon: Icon(Icons.search),
                                      hintText: 'Buscar...',
                                      // border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                const Icon(Icons.settings)
                              ],
                            ),
                          ),
                        )
                      ]
                    ),
                  ),
                )
              ),
              const SizedBox(height: 3),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Text("Búsquedas recientes", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          const Spacer(),
                          Text("Limpiar", style: TextStyle(
                            color: Colors.red[700],
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red[700]
                          ))
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text.rich(
                        TextSpan(children: [
                          WidgetSpan(
                            child: TextTag(content: 'Queso suizo'),
                          ),
                          WidgetSpan(
                            child: TextTag(content: 'Papas fritas'),
                          ),
                          WidgetSpan(
                            child: TextTag(content: 'Ajo'),
                          ),
                          WidgetSpan(
                            child: TextTag(content: 'Lechuga romana'),
                          ),
                          WidgetSpan(
                            child: TextTag(content: 'Yogur'),
                          ),
                        ])
                      ),
                      const SizedBox(height: 20,),
                      Text("Búsquedas populares", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text.rich(
                        TextSpan(children: [
                          WidgetSpan(
                            child: ImageTextTag(image: "https://static.vecteezy.com/system/resources/previews/027/536/043/original/orange-juice-orange-juice-orange-juice-transparent-background-ai-generative-free-png.png", content: 'Jugo de naranja'),
                          ),
                          WidgetSpan(
                            child: ImageTextTag(image: "https://static.vecteezy.com/system/resources/previews/024/558/951/original/eggs-in-basket-isolated-on-transparent-background-ai-generated-png.png", content: 'Huevos'),
                          ),
                          WidgetSpan(
                            child: ImageTextTag(image: "https://static.vecteezy.com/system/resources/previews/029/139/411/original/onion-onion-onion-with-transparent-background-ai-generative-free-png.png", content: 'Cebolla'),
                          ),
                          WidgetSpan(
                            child: ImageTextTag(image: "https://static.vecteezy.com/system/resources/previews/013/526/614/original/herbal-oil-on-a-transparent-background-free-png.png", content: 'Aceite de Girasol'),
                          ),
                          WidgetSpan(
                            child: ImageTextTag(image: "https://static.vecteezy.com/system/resources/thumbnails/027/950/868/small_2x/water-bottle-mineral-png.png", content: 'Agua'),
                          ),
                        ])
                      ),
                      const SizedBox(height: 20,),
                      Text("Artículos populares", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const PopularCarrousel(),
                      const SizedBox(height: 20,),
                    ],
                  ),
                )
              ),
              const CustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}