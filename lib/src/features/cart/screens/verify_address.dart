import 'package:flutter/material.dart';

import '/src/features/components/title_bar.dart';

class VerifyAddress extends StatelessWidget {
  const VerifyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleBar(title: "Verificar dirección"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
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
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey[400] as Color, width: 1.0),
                                    ),
                                    hintText: 'Edificio',
                                    contentPadding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10, left: 10),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.grey[400] as Color, width: 1.0),
                                            ),
                                            hintText: 'Número Apt.',
                                            contentPadding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10, left: 10),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10,),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.grey[400] as Color, width: 1.0),
                                            ),
                                            hintText: 'Número Apt.',
                                            contentPadding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10, left: 10),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey[400] as Color, width: 1.0),
                                    ),
                                    hintText: 'Calle',
                                    contentPadding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10, left: 10),
                                  ),
                                ),
                              ],
                            ),
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
                                Navigator.of(context).pushNamed('checkout');
                              },
                              child: const Text("Finalizar compra")
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}