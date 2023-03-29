import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToast extends StatefulWidget {
  const FlutterToast({super.key});

  @override
  State<FlutterToast> createState() => _FlutterToastState();
}

class _FlutterToastState extends State<FlutterToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Toast'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Long Toast",
                      toastLength: Toast.LENGTH_LONG);
                },
                child: const Text('Show Long Toast'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1);
                },
                child: const Text('Show Short Toast'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1);
                },
                child: const Text('Show Center Short Toast'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Top Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 1);
                },
                child: const Text('Show Top Short Toast'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Colored Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.deepPurpleAccent,
                      textColor: Colors.white);
                },
                child: const Text('Show Colored Toast'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
