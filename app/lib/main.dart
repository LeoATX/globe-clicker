import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'dart:math';

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
  int counter = 1000000;
  final PageController controller = PageController();

  void changeCounter() {
    setState(() {
      counter = counter - 31;
    });
  }

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      const Duration(milliseconds: 500),
      (timer) {
        setState(() {
          counter += Random().nextInt(25) + 1;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: PageView(scrollDirection: Axis.vertical, children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(counter.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 36)),
                const Text(' kg of CO2', style: TextStyle(fontSize: 20)),
              ]),
              const SizedBox(height: 20),
              CupertinoButton(
                onPressed: changeCounter,
                child: const Image(
                  image: AssetImage('assets/images/globe.png'),
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
        Text('Shop baby--capitalism W'),
      ]),
    );
  }
}
