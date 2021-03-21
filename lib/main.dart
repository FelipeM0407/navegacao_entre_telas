import 'package:flutter/material.dart';

import 'TelaSecundaria.dart';

void main() {
  runApp(MaterialApp(
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  TextEditingController _nome = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite seu nome",
              ),
              controller: _nome,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: RaisedButton(
                child: Text("Ir para segunda tela"),
                padding: EdgeInsets.all(15),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaSecundaria(valor: _nome.text),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
