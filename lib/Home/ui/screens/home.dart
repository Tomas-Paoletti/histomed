import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:histomed/Home/widgets/photo_perfil.dart';
import 'package:histomed/Home/widgets/profile_description.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [PerfilPhoto(), ProfileDescription()],
    );
    return throw UnimplementedError();
  }
}
