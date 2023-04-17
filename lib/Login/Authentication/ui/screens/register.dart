import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/inputs.dart';

class Register extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterState();
    throw UnimplementedError();
  }
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        child: Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 50)),
        Column(children: [
          Text(
            "MI CUOTA DEPORTIVA",
            style: TextStyle(
                fontSize: 24,
                color: CupertinoColors.activeGreen,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 20),
          Image.asset(
            "assets/images/icono.png",
            height: 100,
            width: 100,
          ),
        ]),
        const SizedBox(
          height: 30,
          width: 40,
        ),
        Inputs().inputNombre(),
        SizedBox(
          height: 10,
        ),
        Inputs().inputApellido(),
        SizedBox(
          height: 10,
        ),
        Inputs().inputDni(),
        SizedBox(
          height: 10,
        ),
        Inputs().inputEmail(),
        Container(
          margin: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width - 250,
          child: ElevatedButton(onPressed: () {}, child: Text('Registrarse')),
        ),
      ],
    ));
    throw UnimplementedError();
  }
}
