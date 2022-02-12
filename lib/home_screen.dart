import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Counter App',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  number--;
                });
              },
              child: const Text('-'),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              '$number',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  number++;
                });
              },
              child: const Text('+'),
            ),
          ],
        ),
      ),
    );
  }
}
