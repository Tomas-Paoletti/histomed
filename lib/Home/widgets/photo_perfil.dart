import 'package:flutter/cupertino.dart';

class PerfilPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String pathImage = 'assets/images/medico.jpg';
    String Doctor = "Lucas ALmaceda";

    return Column(
      children: <Widget>[
        Container(
          height: 300,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 35, right: 50),
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(pathImage),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bienvenido :'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(Doctor),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
    throw UnimplementedError();
  }
}
