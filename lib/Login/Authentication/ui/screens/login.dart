import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

final _formKey = GlobalKey<FormState>();
final _scaffoldKey = GlobalKey<ScaffoldState>();
final url = Uri.parse("https://micuotadeportiva.com/tienda/login.php");
final headers = {"Content-Type": "application/json;charset=UTF-8"};

class Login extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
    throw UnimplementedError();
  }
}

class _LoginState extends State<Login> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/iconoHistomed.jpg",
                    height: 300,
                    width: 400,
                  ),
                  inputUsername(),
                  const SizedBox(
                    height: 30,
                    width: 40,
                  ),
                  inputPassword(),
                  const SizedBox(
                    height: 30,
                    width: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 50),
                    margin: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width - 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CupertinoColors.activeBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () {
                          LoginUsername(
                              _emailController.text, _passwordController.text);
                        },
                        child: Text('Ingresar'),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )));
    throw UnimplementedError();
  }
}

Container inputUsername() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: CupertinoColors.activeBlue)),
    padding: const EdgeInsets.symmetric(horizontal: 50),
    margin: const EdgeInsets.symmetric(horizontal: 50),
    child: TextFormField(
      controller: _emailController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Por favor ingresa tu username';
        }
      },
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          icon: Icon(Icons.supervised_user_circle, color: Colors.grey),
          border: InputBorder.none,
          hintText: 'Username'),
    ),
  );
}

Container inputPassword() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: CupertinoColors.activeBlue)),
    padding: const EdgeInsets.symmetric(horizontal: 50),
    margin: const EdgeInsets.symmetric(horizontal: 50),
    child: TextFormField(
      controller: _passwordController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Por favor ingresa tu contraseña';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
          icon: Icon(Icons.password),
          border: InputBorder.none,
          hintText: 'Contraseña'),
    ),
  );
}

final _emailController = TextEditingController();
final _passwordController = TextEditingController();
List<String> planets = ["venus", "marte"];

void LoginUsername(String username, String password) async {
  try {
    /* var url = 'http://127.0.0.1:8000/api/auth/login';
    var response = await http.post(Uri.parse(url),
        body: {"username": username, "password": password});
    options:
    Options(contentType: Headers.formUrlEncodedContentType);
    if (response.statusCode == 200) {
      print(response.statusCode);
    } else {
      print('A network error occurred');
    }

    print(username);
    print(password);*/
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://micuotadeportiva.com/tienda/login.php'));
    request.fields.addAll({'username': 'tomi', 'password': 'contra'});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  } catch (e) {
    print(e);
  }
}
