import 'package:flutter/material.dart';

import 'final_page.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  _FifthPageState createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Which Jetpack library are you?'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, left: 8, bottom: 32, right: 8),
        child: Column(
          children: [
            const Text(
              'How do you feel about selfies 🤳?',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text(
                    ' 😟 ',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    color: Colors.purple,
                    minHeight: 5,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    ' 😀 ',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ],
            ),
            Spacer(),
            _bottomRow(),
          ],
        ),
      ),
    );
  }

  Widget _bottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Previous',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.blueAccent),
        ),
        const Text(
          '⚪ ⚪ ⚪ ⚪ 🔵',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FinalPage(),
              ),
            );
          },
          child: const Text(
            'Next',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.blueAccent),
          ),
        ),
      ],
    );
  }
}
