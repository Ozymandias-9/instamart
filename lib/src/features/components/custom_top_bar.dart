import 'package:flutter/material.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/fruit-background.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Color de la sombra
            offset: Offset(0, 2), // Desplazamiento en eje X y eje Y
            blurRadius: 4.0, // Difuminación de la sombra
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
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
              SizedBox(
                width: 40,
                height: 40,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network("https://0.gravatar.com/avatar/dce844ae430be12f3d7d5098ddf0d3c48abe1146263c557266dde638df027979")
                ),
              )
            ]
          ),
        ),
      )
    );
  }
}