import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/third_values.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotas no Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Segunda Página',
              style: TextStyle(fontSize: 50),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/3",
                        arguments: ThirdValues("Salve de Quebra", 300));
                  },
                  child: Text('Ir para Terceira Página')),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Fechar'))
          ],
        ),
      ),
    );
  }
}
