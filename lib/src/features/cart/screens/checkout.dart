import 'package:flutter/material.dart';

import '/src/features/components/title_bar.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleBar(title: "Caja"),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dirección de entrega", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          const SizedBox(height: 20,),
                          SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: Image.network("https://www.google.com/maps/d/thumbnail?mid=1H2FMrveUaDgvVDpfdpSmhUP5lSE&hl=fr",
                              fit: BoxFit.cover
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1, color: Colors.grey[200] as Color)
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.location_pin, color: Theme.of(context).colorScheme.primary),
                                    const SizedBox(width: 20,),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Entregar a:"),
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(text: "Santa Fe, 115...", style: TextStyle(fontWeight: FontWeight.w600)),
                                              WidgetSpan(child: Icon(Icons.chevron_right)),
                                            ] 
                                          )
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Text("Cambiar", style: TextStyle(color: Colors.red[700], fontWeight: FontWeight.w600),)
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text("Tiempo de entrega", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey[300] as Color),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.delivery_dining_outlined),
                                const SizedBox(width: 10,),
                                Text("35 minutos", style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  fontWeight: FontWeight.w600
                                ),),
                              ]
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text("Método de pago", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey[300] as Color),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.wallet_outlined),
                                const SizedBox(width: 10,),
                                Text("Efectivo", style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  fontWeight: FontWeight.w600
                                ),),
                              ]
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey[300] as Color),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.credit_card),
                                const SizedBox(width: 10,),
                                Text("Visa", style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  fontWeight: FontWeight.w600
                                ),),
                              ]
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey[300] as Color),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.credit_card),
                                const SizedBox(width: 10,),
                                Text("Mastercard", style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  fontWeight: FontWeight.w600
                                ),),
                              ]
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Resumen de Pago", style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              const SizedBox(height: 20,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Subtotal:"),
                                  Text("\$100.00")
                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Cargo de traslado:"),
                                  Text("\$100.00")
                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Cargo total:", style: TextStyle(fontWeight: FontWeight.w600),),
                                  Text("\$200.00", style: TextStyle(fontWeight: FontWeight.w600),)
                                ],
                              ),
                              const SizedBox(height: 10,),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).colorScheme.primary,
                                    foregroundColor: Colors.black
                                  ),
                                  onPressed: () {},
                                  child: const Text("Confirmar")
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}