import 'package:flutter/material.dart';

class Inputs {
  Container inputNombre() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 20),
        decoration:
            InputDecoration(border: InputBorder.none, hintText: "Nombre"),
      ),
    );
  }

  Container inputApellido() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        keyboardType: TextInputType.name,
        style: TextStyle(fontSize: 20),
        decoration:
            InputDecoration(border: InputBorder.none, hintText: 'apellido'),
      ),
    );
  }

  Container inputDni() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(border: InputBorder.none, hintText: 'Dni'),
      ),
    );
  }

  Container inputEmail() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'email@example.com'),
      ),
    );
  }

  Container inputFoto() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.green)),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor ingresa una foto';
          }
        },
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(border: InputBorder.none, hintText: 'Dni'),
      ),
    );
  }
}
