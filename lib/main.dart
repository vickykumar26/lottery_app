import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Center(child: Text('Lottery App')),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Lottery winning number is 6',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 250, //height: x==6? 600 : 250
                  width: 350,
                  decoration: BoxDecoration(
                      color: x == 6 ? Colors.green.withOpacity(.3) : Colors.grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: x == 6 ?
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done_all,
                          color: Colors.green.withOpacity(.9),size: 35,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Congratulation you have won the lottery\nyour number is $x',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ) : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          color: Colors.red.withOpacity(.9), size: 35,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Better luck next time your lottery number is $x\ntry again',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          onPressed: () {
            x = random.nextInt(10);
            setState(() {

            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
