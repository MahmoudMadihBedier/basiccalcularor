import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonWidget extends StatefulWidget {
  String digit;
  Function onDigitclik;
  buttonWidget(this.digit, this.onDigitclik);

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
              widget.onDigitclik();
            }
            widget.onDigitclik(widget.digit);
          },
          child:
          Text(widget.digit ,
            style: const TextStyle(fontWeight: FontWeight.bold ,fontSize: 25 )
            ,), ),
      ),

    );
  }
}
