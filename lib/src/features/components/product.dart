import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String name;
  final double price;
  final String measure;
  final double discount;
  final String image;
  
  const Product({super.key, required this.name, required this.price, required this.measure, this.discount = 0, required this.image});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('product-details');
      },
      child: Column(
        children: [
          SizedBox(
            width: 125,
            height: 150,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 15,
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: Image.network(widget.image))
                  ),
                  Positioned(
                    top: 80,
                    left: 30,
                    child: Container(
                      width: 70,
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
                    top: 110,
                    left: 8,
                    child: SizedBox(
                      width: 109,
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
                  ),
                  widget.discount != 0 ? Positioned(
                    top: 0,
                    left: 8,
                    child: SizedBox(
                      width: 50,
                      height: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent[100],
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                        ),
                        child: Text("${widget.discount}%",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700
                          ),
                        )
                      ),
                    ),
                  ) : const SizedBox(width: 0, height: 0),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Text(widget.name, style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w600
              )),
              const SizedBox(height: 2),
              SizedBox(
                width: 125,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "\$${(widget.price * (100 - widget.discount)) / 100} ", style: Theme.of(context).textTheme.labelMedium!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w600
                            )
                          ),
                          TextSpan(text: "/ ${widget.measure}", style: Theme.of(context).textTheme.labelMedium!)
                        ]
                      )
                    ),
                    widget.discount != 0 ? Text("\$${widget.price}", style: Theme.of(context).textTheme.labelSmall) : const SizedBox(width: 0, height: 0),
                  ],
                ),
              )
            ]
          ),
        ],
      )
    );
  }
}