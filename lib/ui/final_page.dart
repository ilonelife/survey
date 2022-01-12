import 'package:flutter/material.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Which Jetpack library are you?'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, left: 8, bottom: 32, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Compose',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Congratulations, you are Compose',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'You are a curious developer, always willing to try something new. '
              'You want to stay up to date with the trends to '
              'Compose is your middle name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            Spacer(),
            Center(
              child: Text(
                'Done',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
