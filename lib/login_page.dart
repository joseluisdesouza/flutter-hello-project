import 'package:flutter/material.dart';
import 'package:hello/home_page.dart';

//stf cria um stateful sem precisar escrever do zero
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
              ),
              SizedBox(height: 15),
              RaisedButton(
                onPressed: () {
                  if (email == 'josesouza@gmail.com' && password == '123') {
                    //Forma manual de navegação entre telas - Navigator.of(context).push(
                    //MaterialPageRoute(builder: (context) => HomePage()));
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                    print('Correto');
                  }
                },
                child: Text('Entrar'),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
