import 'package:flutter/material.dart';

class OddEvenPage extends StatefulWidget {
  const OddEvenPage({super.key});

  @override
  State<OddEvenPage> createState() => _OddEvenPageState();
}

class _OddEvenPageState extends State<OddEvenPage> {
  String result = '';
  Color bgColor = Colors.white; // ✅ Added background color variable
  final controller = TextEditingController();

  void check() {
    String input = controller.text;

    if (input.isEmpty) {
      setState(() {
        result = 'Enter number';
        bgColor = Colors.orange;
      });
      return;
    }

    try {
      int n = int.parse(input);

      setState(() {
        result = n % 2 == 0 ? 'EVEN' : 'ODD';
        bgColor = n % 2 == 0 ? Colors.blue : Colors.red;
      });
    } catch (e) {
      setState(() {
        result = 'Invalid number';
        bgColor = Colors.grey;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor, // ✅ background color changes
      appBar: AppBar(title: const Text('Even/Odd Checker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number',
                ),
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: check,
              child: const Text('CHECK'),
            ),

            const SizedBox(height: 30),
            Text(
              result,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
