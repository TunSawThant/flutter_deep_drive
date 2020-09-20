import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  final VoidCallback btn;
  final String txt;
  const BtnWidget({Key key, this.btn, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: btn,
      color: txt == 'Submit' ? Colors.blue : Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          '$txt',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
