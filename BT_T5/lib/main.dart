import 'package:flutter/material.dart';

void main() {
  runApp(ArkSurvivalApp());
}

class ArkSurvivalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ark Survival',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _playerLevel = 1;

  void _levelUp() {
    setState(() {
      _playerLevel++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ark Survival'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Player Level:',
            ),
            Text(
              '$_playerLevel',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _levelUp,
              child: Text('Level Up'),
            ),
          ],
        ),
      ),
    );
  }
}
