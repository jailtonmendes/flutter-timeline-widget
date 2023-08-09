import 'package:flutter/material.dart';
import 'package:timeline/components/my_timeline_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEE032D), // Cor hexadecimal corrigida
        title: const Text('Meus pedidos'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: const [
            // start timeline
            MyTimeLineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
              eventCard: Text(
                "PEDIDO RECEBIDO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // middle timeline
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: Text(
                "PAGAMENTO CONFIRMADO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              eventCard: Text(
                "PEDIDO ENVIADO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // end timeline
            MyTimeLineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventCard: Text(
                "PEDIDO ENTREGUE",
                style: TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
