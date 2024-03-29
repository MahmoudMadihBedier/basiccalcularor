import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonWidget extends StatefulWidget {
  String digit;
  //Function ondigitClik;
  buttonWidget(this.digit);

  @override
  State<buttonWidget> createState() => _buttonWidgetState();
}

class _buttonWidgetState extends State<buttonWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: const EdgeInsets.all(4),
          child: ElevatedButton(
              onPressed: (){},
              child:
              Text(widget.digit,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),

              )
          ),
        )
    );
  }
}
