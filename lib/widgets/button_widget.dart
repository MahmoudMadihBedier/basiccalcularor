import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonWidget extends StatefulWidget {
  String digit;
  Function ondigitClik;
  buttonWidget(this.digit, this.ondigitClik);

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
              onPressed: (){
                if(widget.digit=="="){
                  widget.ondigitClik();
                }
                widget.ondigitClik();
              },
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
