import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network("https://static.wixstatic.com/media/b8d64b_cdd32f53ccca45f5955b3e69c2498916~mv2.png/v1/fill/w_560,h_376,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/b8d64b_cdd32f53ccca45f5955b3e69c2498916~mv2.png")
          )
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Papa blanca"),
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
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    height: 30,
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
                  Row(
                    children: [
                      Icon(Icons.delete_outline, color: Colors.red[700],),
                      const SizedBox(width: 5,),
                      Text("Eliminar", style: TextStyle(color: Colors.red[700], fontWeight: FontWeight.w600)),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}