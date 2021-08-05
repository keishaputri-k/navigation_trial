import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textController,
              decoration: InputDecoration(hintText: 'Enter your name!'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _textController.text);
                },
                child: Text('Send')),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
