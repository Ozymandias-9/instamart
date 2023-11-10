import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Step1 extends StatelessWidget {
  const Step1({ super.key });

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Navega y descubre",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w900,
          )
        ),
        const SizedBox(height: 20),
        const Text("Explora nuestro vasto catálogo de productos, despensa, y más."),
        const SizedBox(height: 20),
        // Image.asset('assets/img/breakfast.png')
        SizedBox(height: 200, width: 200, child: SvgPicture.asset('assets/img/breakfast.svg')),
      ],
    );
  }
}

class Step2 extends StatelessWidget {
  const Step2({ super.key });

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Descubre variedad en cada categoría",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w900,
          )
        ),
        const SizedBox(height: 20),
        const Text("Ve nuestras diversas categorías de productos y encuentra exactamente lo que necesitas."),
        const SizedBox(height: 20),
        // Image.asset('assets/img/breakfast.png')
        SizedBox(height: 200, width: 200, child: SvgPicture.asset('assets/img/grocery.svg')),
      ],
    );
  }
}

class Step3 extends StatelessWidget {
  const Step3({ super.key });

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Llena tu carrito de compras",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w900,
          )
        ),
        const SizedBox(height: 20),
        const Text("Añade tus productos favoritos al carrito y gestiona tu lista de compras de manera conveniente."),
        const SizedBox(height: 20),
        // Image.asset('assets/img/breakfast.png')
        SizedBox(height: 200, width: 200, child: SvgPicture.asset('assets/img/items.svg')),
      ],
    );
  }
}