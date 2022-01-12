import 'package:flutter/material.dart';
import 'package:survey/ui/fifth_page.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  DateTime? _selectedTime = DateTime.now();

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
              'When was the last time you ordered takeaway '
              'because you could not be bothered to cook?',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 32,
            ),
            InkWell(
              onTap: () {
                Future<DateTime?> selectedDate = showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(DateTime.now().year - 3),
                  lastDate: DateTime(DateTime.now().year + 3),
                  builder: (context, Widget? child) {
                    return Theme(
                      data: ThemeData.dark(),
                      child: child!,
                    );
                  },
                );
                selectedDate.then((dateTime) {
                  setState(() {
                    _selectedTime = dateTime;
                  });
                });
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: const Text(
                  'Pick a date',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 32,
              child: Text(
                '🏕 🗓 ${_selectedTime?.year}년 ${_selectedTime?.month}월  ${_selectedTime?.day}일',
                style: const TextStyle(fontSize: 24),
              ),
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
          '⚪ ⚪ ⚪ 🔵 ⚪',
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FifthPage(),
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
