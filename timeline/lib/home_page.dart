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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: ListView(
          children: const [
            // start timeline
            MyTimeLineTile(
                isFirst: true,
                isLast: false,
                isPast: true,
                eventCard: Text("ORDER PLACED")),

            // middle timeline
            MyTimeLineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text("ORDER SHIPPED")),

            // end timeline
            MyTimeLineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventCard: Text("ORDER DELIVERED"),
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              eventCard: Text("ORDER DELIVERED"),
            )
          ],
        ),
      ),
    );
  }
}
