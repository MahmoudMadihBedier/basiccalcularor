import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/ac_button_widget.dart';
import '../widgets/button_widget.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String result=" ";
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
                  Text(result==" "?"0.0":result, style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold, fontSize: 20,),)
              ],)),
          Expanded(
              child:Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('7',ondigitclik),
                  buttonWidget('8',ondigitclik),
                  buttonWidget('9',ondigitclik),
                  buttonWidget('+',ondigitclik),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('4',ondigitclik),
                  buttonWidget('5',ondigitclik),
                  buttonWidget('6',ondigitclik),
                  buttonWidget('-',ondigitclik),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('1',ondigitclik),
                  buttonWidget('2',ondigitclik),
                  buttonWidget('3',ondigitclik),
                  buttonWidget('*',ondigitclik),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('0',ondigitclik),
                  buttonWidget('.',ondigitclik),
                  buttonWidget('/',ondigitclik),
                  ac_button_widget()

                ],
              ))

       

        ],
      ),
    );
  }
  String LHS=" ";
  String operator="";
  void ondigitclik( String digit){
    print(digit);
    setState(() {
      result+=digit;
    });
  }
  void OnOperatorClik(String onoperatorclik){
    if(LHS.isEmpty){
      LHS=result;
    }else{
      String RHS=result;
      LHS=calculator(LHS,operator,RHS).toString();
    }
    setState(() {

    });
    result=" ";
    operator=onoperatorclik;
  }
  void onequalClik(){
    print(LHS);
    print(operator);
    print(result);
    result=calculator(LHS, operator, result).toString();
    setState(() {
      result=calculator(LHS, operator, result).toString();
    });
    result=" ";

  }
  double?  calculator(LHS,operator,RHS){
    double LHSdouble=double.parse(LHS);
    double RHSdouble=double.parse(RHS);
    if(operator=='+'){return LHSdouble+RHSdouble;}
    if(operator=='-'){return LHSdouble-RHSdouble;}
    if(operator=='*'){return LHSdouble*RHSdouble;}
    if(operator=='/'){return LHSdouble/RHSdouble;}


  }

}


