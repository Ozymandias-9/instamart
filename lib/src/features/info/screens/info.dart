import 'package:flutter/material.dart';

import 'steps.dart';

class Info extends StatelessWidget {
  const Info({ super.key });

  @override
  Widget build(BuildContext context) {
    return (
      const InfoContainer()
    );
  }
}

class InfoContainer extends StatefulWidget {
  const InfoContainer({super.key});

  @override
  State<InfoContainer> createState() => _InfoState();
}

class _InfoState extends State<InfoContainer> {
  int _step = 0;
  final List<Widget> steps = [const Step1(), const Step2(), const Step3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('set-phone');
                    },
                    child: const Text('Saltar', style: TextStyle(fontWeight: FontWeight.w900))
                  )
                ],
              ),
              const SizedBox(height: 20),
              steps[_step],
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List<Widget>.from(steps.asMap().entries.map((e) {
                      return Row(
                        children: [
                          Container(
                            width: _step == e.key ? 30 : 10, // Ancho del rectángulo
                            height: 10, // Altura del rectángulo
                            decoration: BoxDecoration(
                              color: _step == e.key ? Colors.black : Colors.grey.shade300, // Color de fondo del rectángulo
                              borderRadius: BorderRadius.circular(10), // Radio de las esquinas redondeadas
                            )
                          ),
                          e.key != steps.length-1 ? const SizedBox(width: 5) : const SizedBox.shrink(),
                        ]
                      );
                    }))
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_step == steps.length-1) {
                        Navigator.of(context).pushNamed('set-phone');
                      }
                      else {
                        setState(() {
                          _step++;
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.all(10),
                    ),
                    child: const Row(children: [Text('Continuar'), Icon(Icons.chevron_right, color: Colors.black, size: 25,)]),
                  )
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )
    );
  }
}