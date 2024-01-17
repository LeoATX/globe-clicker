import 'package:flutter/cupertino.dart';
import 'game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Global Clicker',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView(scrollDirection: Axis.vertical, children: const [
      GamePage(),
      Center(child: Text('Shop baby--capitalism W')),
    ]);
  }
}
