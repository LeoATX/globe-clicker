import 'package:flutter/cupertino.dart';
import 'game.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(scrollDirection: Axis.vertical, children: const [
      GamePage(),
      Center(child: Text('Shop baby--capitalism W')),
    ]);
  }
}
