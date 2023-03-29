import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FlutterShowDialog extends StatefulWidget {
  const FlutterShowDialog({super.key});

  @override
  State<FlutterShowDialog> createState() => _FlutterShowDialogState();
}

class _FlutterShowDialogState extends State<FlutterShowDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Show Dialog'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Material Dialog'),
                      content: const Text('Hey! I am Coflutter!'),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close')),
                        TextButton(
                          onPressed: () {
                            print('HelloWorld!');
                            Navigator.pop(context);
                          },
                          child: const Text('Hello World!'),
                        )
                      ],
                    );
                  });
            },
            child: const Text('Show Material  Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Cupertino Dialog'),
                      content: const Text('Hey! I am Coflutter!'),
                      actions: <Widget>[
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close')),
                        TextButton(
                          onPressed: () {
                            print('HelloWorld!');
                            Navigator.pop(context);
                          },
                          child: const Text('Hello World!'),
                        )
                      ],
                    );
                  });
            },
            child: const Text('Show Cupertino Dialog'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              late Timer _timer;
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    _timer = Timer(const Duration(seconds: 30), () {
                      Navigator.of(context).pop();
                    });
                    return AlertDialog(
                      content: Row(
                        children: [
                          const CircularProgressIndicator(),
                          Container(
                            margin: const EdgeInsets.only(left: 7),
                            child: const Text('Loading, please wait..'),
                          )
                        ],
                      ),
                    );
                  });
            },
            child: const Text('Show Loading Dialog 30 second'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Chosse on Option'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Option 1'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Option 2'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Option 3'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Option 4'),
                        ),
                      ],
                    );
                  });
            },
            child: const Text('Show Simple Dialog'),
          )
        ],
      )),
    );
  }
}
