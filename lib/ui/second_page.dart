import 'package:flutter/material.dart';

import 'third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  static const values = [
    'Spider man (Avengers)',
    'Iron man (Avengers)',
    'Uni-kitty (Lego Movie)',
    'Captain Planet'
  ];

  String _selectedValue = values.first;

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
              'Pick a superhero',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 16,
            ),
            _radioboxList(),
            Spacer(),
            _bottomRow(),
          ],
        ),
      ),
    );
  }

  _radioboxList() {
    return Column(
      children: values.map((value) {
        // final selected = this._selectedValue == value;
        return RadioListTile(
            value: value,
            groupValue: _selectedValue,
            title: Text(value),
            onChanged: (value) {
              setState(() => this._selectedValue = value.toString());
            });
      }).toList(),
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
          '⚪ 🔵 ⚪ ⚪ ⚪',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdPage()),
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
