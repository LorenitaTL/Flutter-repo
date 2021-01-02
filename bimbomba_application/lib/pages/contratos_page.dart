import 'package:bimbomba_application/widgets/headers.dart';
import 'package:flutter/material.dart';

class ContratosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithTitle(
              title: 'Historial de contrataciones',
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ExpansionTile(
                      initiallyExpanded: true,
                      title: Container(color:Colors.grey, child: Text('Contrato')),
                      children: [
                        Text('Servicio 1'),
                        Text('Servicio 2'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
