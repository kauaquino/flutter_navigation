import 'package:flutter/material.dart';
import 'third_values.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ThirdValues;

    return Scaffold(
      appBar: AppBar(
        title: Text('Rotas no Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              args.texto,
              style: TextStyle(fontSize: 50),
            ),
            Text(
              args.numero.toString(),
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/2");
                },
                child: Text('Fechar'))
          ],
        ),
      ),
    );
  }
}
