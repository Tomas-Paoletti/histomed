import 'package:flutter/material.dart';

class ProfileDescription extends StatelessWidget {
  @override
  String email = "aaaaa@gmail.com";
  String PhoneNumber = '4352676';
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              width: 350,
              child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      filled: true,
                      fillColor: Color(0xC52E9AFE),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black45, width: 5)),
                      hintText: email)),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            SizedBox(
              width: 350,
              child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      filled: true,
                      fillColor: Color(0xC52E9AFE),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black45, width: 5)),
                      hintText: PhoneNumber)),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            SizedBox(
              width: 350,
              child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      filled: true,
                      fillColor: Color(0xC52E9AFE),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black45, width: 5)),
                      hintText: email)),
            )
          ],
        ),
      ],
    );
    throw UnimplementedError();
  }
}
