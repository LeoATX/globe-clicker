import 'package:flutter/cupertino.dart';
import 'home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Global Clicker',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.white,
      ),
      home: HomePage(),
    );
  }
}
