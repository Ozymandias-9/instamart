import 'package:flutter/material.dart';

import 'verify_phone.dart';

class SetPhone extends StatefulWidget {
  const SetPhone({ super.key });

  @override
  State<SetPhone> createState() => _SetPhoneState();
}

class _SetPhoneState extends State<SetPhone> {
  int _country = 52;
  String _phoneNumber = '';
  final phoneController = TextEditingController();

   @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void _changePhoneState() {
    setState(() {
      _phoneNumber = phoneController.text;
    });
  }

  @override
  void initState() {
    super.initState();
    phoneController.addListener(_changePhoneState);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/fruit-background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Image.asset('assets/img/fruit-basket.png', width: 100, height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Insta',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Colors.black
                  ),
                ),
                Text(
                  'Mart',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Color de la sombra
                      offset: Offset(0, 2), // Desplazamiento en eje X y eje Y
                      blurRadius: 4.0, // Difuminación de la sombra
                    ),
                  ],
                ),
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("¡Bienvenido!",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text("Por favor, ingresa tu número de teléfono:",
                      style: Theme.of(context).textTheme.labelLarge
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: _phoneNumber != '' ? Theme.of(context).colorScheme.primary : Colors.grey.shade300,
                          width: 2.0,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: DropdownButton<int>(
                              value: _country,
                              items: const [
                                DropdownMenuItem<int>(
                                  value: 52,
                                  child: Text('México'),
                                ),
                                DropdownMenuItem<int>(
                                  value: 1,
                                  child: Text('EEUU'),
                                )
                              ],
                              onChanged: (int? value) {
                                setState(() {
                                  _country = value!;
                                });
                              }
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            width: 1,
                            height: 30,
                            child: const SizedBox(height: 0, width: 0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("+${_country.toString()}", style: const TextStyle(fontSize: 16),),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 2.5),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: phoneController,
                                decoration: const InputDecoration(
                                  hintText: 'Número de teléfono',
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ),
                          _phoneNumber != '' ? SizedBox(
                            width: 25,
                            height: 25,
                            child: IconButton(
                              onPressed: () {
                                phoneController.clear();
                                setState(() {
                                  _phoneNumber = '';
                                });
                              },
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.grey[400],
                                padding: const EdgeInsets.all(3),
                              ),
                              icon: const Icon(Icons.close, color: Colors.white, size: 15,)
                            ),
                          ) : const SizedBox(height: 0, width: 0)
                        ]
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              if (_phoneNumber != '') {
                                Navigator.of(context).pushNamed('verify-phone', arguments: VerifyPhoneArguments('+${_country.toString()} ${_phoneNumber.toString()}'));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _phoneNumber == '' ? Theme.of(context).colorScheme.primaryContainer : Theme.of(context).colorScheme.primary,
                              foregroundColor: _phoneNumber == '' ? Colors.grey[600] : Colors.black,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: const EdgeInsets.all(10),
                            ),
                            child: const Text("Continuar"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        children: [
                          TextSpan(text: "Al dar a continuar, aceptas nuestros "),
                          TextSpan(text: "Términos y Condiciones de Servicio.", style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      )
                    ),
                  ]
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}