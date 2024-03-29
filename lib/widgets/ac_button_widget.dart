import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ac_button_widget extends StatefulWidget {
  String digit ;
  Function onDigitClik ;
  ac_button_widget(this.digit ,this.onDigitClik);

  @override
  State<ac_button_widget> createState() => _ac_button_widgetState();
}

class _ac_button_widgetState extends State<ac_button_widget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:Container(
          margin: const EdgeInsets.all(4),
          child: ElevatedButton(
            onPressed: (){
              if(widget.digit==" "){

              }else{
                widget.digit=" ";
              }
            },
            child:Text("AC"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange, // Change to your desired color
            ),
          ),
        )
    );
  }
}
