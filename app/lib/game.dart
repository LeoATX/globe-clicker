import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<StatefulWidget> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(counter.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 36)),
            const Text(' kg of CO2', style: TextStyle(fontSize: 20)),
          ]),
          const SizedBox(height: 20),
          CupertinoButton(
            onPressed: changeCounter,
            child: Image(
              image: const AssetImage('assets/images/globe.png'),
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
