import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
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

  void changeCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  counter.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 36),
                ),
                const Text(' kg of CO2', style: TextStyle(fontSize: 20)),
              ],
            ),
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
    );
  }
}
