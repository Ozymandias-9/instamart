import 'package:flutter/material.dart';

import '/src/features/home/screens/category_carrousel.dart';
import '/src/features/home/screens/offer_carrousel.dart';
import '/src/features/home/screens/popular_carrousel.dart';
import '/src/features/home/screens/promo_carrousel.dart';
import '/src/features/components/custom_app_bar.dart';
import '/src/features/components/custom_top_bar.dart';

class Home extends StatelessWidget {
  const Home({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            const CustomTopBar(),
            const SizedBox(height: 3),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    Text("Categorías", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const CategoryCarrousel(),
                    const SizedBox(height: 20,),
                    Text("Ofertas", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const OfferCarrousel(),
                    const SizedBox(height: 20,),
                    Text("Promociones", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const PromoCarrousel(),
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
    );
  }
}