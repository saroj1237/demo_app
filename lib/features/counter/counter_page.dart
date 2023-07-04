import 'dart:async';

import 'package:demo_app/features/counter/time_string_parser.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late Duration myDuration;
  late Timer _timer;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    myDuration = const Duration();
  }

  void startTimer() {
    Duration? parsedDuration = parseTimeString(_controller.text);
    if (parsedDuration != null) {
      setState(() {
        myDuration = parsedDuration;
        _isTimerRunning = true;
      });

      const oneSecond = Duration(seconds: 1);
      _timer = Timer.periodic(oneSecond, (timer) {
        setState(() {
          if (myDuration.inSeconds > 0) {
            myDuration -= oneSecond;
          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content:
                    Text("Congratulations!! You'v completed your excercise.")));
            _timer.cancel();
          }
        });
      });
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Invalid time format")));
    }
  }

  void stopTimer() {
    _timer.cancel();
    setState(() {
      _isTimerRunning = false;
      myDuration = const Duration();
    });
  }

  bool _isTimerRunning = false;

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  bool invalidInput = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CountDown Timer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myDuration.inSeconds < 1
                ? SizedBox.fromSize()
                : Center(
                    child: Text(
                      '${myDuration.inHours}:${(myDuration.inMinutes % 60).toString().padLeft(2, '0')}:${(myDuration.inSeconds % 60).toString().padLeft(2, '0')}',
                      style: const TextStyle(fontSize: 36),
                    ),
                  ),
            const SizedBox(height: 16),
            const Text("Set your duration"),
            const SizedBox(height: 8),
            TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "2h:20m:40s",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      if (_isTimerRunning) {
                        stopTimer();
                      } else {
                        startTimer();
                      }
                    },
                    child:
                        Text(_isTimerRunning ? "Stop Timer" : "Start Timer")))
          ],
        ),
      ),
    );
  }
}
