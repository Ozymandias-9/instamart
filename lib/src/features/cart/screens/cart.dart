import 'package:flutter/material.dart';

import '/src/features/cart/screens/product_list.dart';
import '/src/features/components/custom_app_bar.dart';
import '/src/features/components/custom_top_bar.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
              const CustomTopBar(),
              const SizedBox(height: 3),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    children: const [
                      ProductList(),
                      SizedBox(height: 10,),
                      ProductList(),
                      SizedBox(height: 10,),
                      ProductList(),
                      SizedBox(height: 10,),
                      ProductList(),
                      SizedBox(height: 10,),
                    ],
                  ),
                )
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(width: 1, color: Colors.grey[200] as Color)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Resumen de Pago", style: Theme.of(context).textTheme.titleLarge!.copyWith(
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
                        onPressed: () {
                          Navigator.of(context).pushNamed('verify-address');
                        },
                        child: const Text("Caja")
                      ),
                    ),
                  ],
                ),
              ),
              const CustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}