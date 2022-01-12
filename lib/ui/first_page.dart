import 'package:flutter/material.dart';
import 'package:survey/ui/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final checkboxListLabels = [
    'Read',
    'Work out',
    'Draw',
    'Play video games',
    'Dance',
    'Watch movies'
  ];

  Map<String, bool> checkboxListValues = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Which Jetpack library are you?'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, left: 8, bottom: 32, right: 8),
        child: Column(
          children: [
            const Text(
              'In my free time I like to ...',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: _checkboxList(),
            ),
            Spacer(),
            _bottomRow(),
          ],
        ),
      ),
    );
  }

  List<Widget> _checkboxList() {
    return checkboxListLabels.map((label) {
      return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(label),
        value: checkboxListValues[label] ?? false,
        onChanged: (newValue) {
          setState(() {
            if (checkboxListValues[label] == null) {
              checkboxListValues[label] = true;
            }
            checkboxListValues[label] = !checkboxListValues[label]!;
          });
        },
      );
    }).toList();
  }

  Widget _bottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'Previous',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey),
        ),
        const Text(
          '🔵 ⚪ ⚪ ⚪ ⚪',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
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
