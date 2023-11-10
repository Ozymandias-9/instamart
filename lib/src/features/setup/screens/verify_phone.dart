import 'package:flutter/material.dart';

class VerifyPhoneArguments {
  final String phoneNumber;

  VerifyPhoneArguments(this.phoneNumber);
}

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({ super.key });

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  String _code = '0000';

  void codeCallback(String num, int index) {
    setState(() {
      List<String> newCode = _code.split('');
      newCode[index] = num;
      _code =  newCode.join('');
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as VerifyPhoneArguments;

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
                    Text("Verificación",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "Ingresa el código que mandamos al número",
                            style: Theme.of(context).textTheme.labelLarge
                          ),
                          TextSpan(text: " ${args.phoneNumber}.",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            )
                          ),
                        ],
                      )
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InputVerifyCode(index: 0, callback: codeCallback),
                        InputVerifyCode(index: 1, callback: codeCallback),
                        InputVerifyCode(index: 2, callback: codeCallback),
                        InputVerifyCode(index: 3, callback: codeCallback),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: "¿No recibiste un código?",
                                style: Theme.of(context).textTheme.labelLarge
                              ),
                              TextSpan(text: " Reenvíalo.",
                                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                )
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil('home', (r) => false);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _code == '0000' ? Theme.of(context).colorScheme.primaryContainer : Theme.of(context).colorScheme.primary,
                              foregroundColor: _code == '0000' ? Colors.grey[600] : Colors.black,
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

class InputVerifyCode extends StatefulWidget {
  final int index;
  final Function callback;

  const InputVerifyCode({ super.key, required this.index, required this.callback });

  @override
  State<InputVerifyCode> createState() => _InputVerifyCodeState();
}

class _InputVerifyCodeState extends State<InputVerifyCode> {
  final controller = TextEditingController();

  void _handleChange(String newValue) {
    if (newValue == '') {
      widget.callback('0', widget.index);
    }
    else if (newValue.length > 1) {
      controller.text = newValue.substring(1);
      widget.callback(newValue.substring(1), widget.index);
      FocusScope.of(context).nextFocus();
    }
    else {
      widget.callback(newValue, widget.index);
      FocusScope.of(context).nextFocus();

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: controller.text != '' ? Theme.of(context).colorScheme.primary : Colors.grey.shade300,
          width: 2.0,
        ),
      ),
      padding: const EdgeInsets.only(top: 20, bottom: 0, left: 10, right: 10),
      child: SizedBox(
        width: 40,
        height: 30,
        child: TextFormField(
          maxLength: 2,
          controller: controller,
          onChanged: _handleChange,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintText: '0',
            border: InputBorder.none,
            counterText: "",
          ),
          style: const TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}