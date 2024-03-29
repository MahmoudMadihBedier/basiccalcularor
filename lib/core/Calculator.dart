import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        title:
        const Text('calculatetor',style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold, fontSize: 20,),),
      ),
      body: Column(
       crossAxisAlignment:CrossAxisAlignment.stretch ,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("result", style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold, fontSize: 20,),)
              ],)),
          Expanded(
              child:Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('7'),
                  buttonWidget('8'),
                  buttonWidget('9'),
                  buttonWidget('+'),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('4'),
                  buttonWidget('5'),
                  buttonWidget('6'),
                  buttonWidget('-'),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('1'),
                  buttonWidget('2'),
                  buttonWidget('3'),
                  buttonWidget('*'),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('0'),
                  buttonWidget('.'),
                  buttonWidget('/'),
                  buttonWidget('AC'),

                ],
              ))

       

        ],
      ),
    );
  }
}
