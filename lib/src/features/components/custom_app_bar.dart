import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Color de la sombra
            offset: Offset(0, -1), // Desplazamiento en eje X y eje Y
            blurRadius: 4.0, // Difuminación de la sombra
          ),
        ],
      ),
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('home');
              },
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: ModalRoute.of(context)?.settings.name == 'home' ? Theme.of(context).colorScheme.primary : Colors.black,
                  ),
                  Text("Inicio", style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: ModalRoute.of(context)?.settings.name == 'home' ? Theme.of(context).colorScheme.primary : Colors.black,
                    fontWeight: FontWeight.w600
                  ),)
                ]
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('search');
              },
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: ModalRoute.of(context)?.settings.name == 'search' ? Theme.of(context).colorScheme.primary : Colors.black,
                  ),
                  Text("Buscar", style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: ModalRoute.of(context)?.settings.name == 'search' ? Theme.of(context).colorScheme.primary : Colors.black,
                    fontWeight: FontWeight.w600
                  ),)
                ]
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('cart');
              },
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: ModalRoute.of(context)?.settings.name == 'cart' ? Theme.of(context).colorScheme.primary : Colors.black,
                  ),
                  Text("Carrito", style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: ModalRoute.of(context)?.settings.name == 'cart' ? Theme.of(context).colorScheme.primary : Colors.black,
                    fontWeight: FontWeight.w600
                  ),)
                ]
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('offers');
              },
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.discount_outlined,
                    color: ModalRoute.of(context)?.settings.name == 'offers' ? Theme.of(context).colorScheme.primary : Colors.black,
                  ),
                  Text("Ofertas", style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: ModalRoute.of(context)?.settings.name == 'offers' ? Theme.of(context).colorScheme.primary : Colors.black,
                    fontWeight: FontWeight.w600
                  ),)
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}