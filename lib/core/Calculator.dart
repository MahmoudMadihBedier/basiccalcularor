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
                  Text("${result==" " ?"0.0":result}", style: TextStyle(color: Colors.white,fontWeight:  FontWeight.bold, fontSize: 20,),)
              ],)),
          Expanded(
              child:Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('7',ondigetclik),
                  buttonWidget('8',ondigetclik),
                  buttonWidget('9',ondigetclik),
                  buttonWidget('+',onOperatotclik),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('4',ondigetclik),
                  buttonWidget('5',ondigetclik),
                  buttonWidget('6',ondigetclik),
                  buttonWidget('-',onOperatotclik),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('1',ondigetclik),
                  buttonWidget('2',ondigetclik),
                  buttonWidget('3',ondigetclik),
                  buttonWidget('*',onOperatotclik),

                ],
              )),
          Expanded(
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonWidget('0',ondigetclik),
                  buttonWidget('=',OequelClik),
                  buttonWidget('/',onOperatotclik),
                  ac_button_widget(result,OnAcClik)

                ],
              ))

       

        ],
      ),
    );
  }
  String LHS="";
  String operator="";
  void ondigetclik(String digit){

    print(digit);
    setState(() {
      result+=digit;
    });


  }
  void onOperatotclik(String operatorclik){
    if (LHS.isEmpty){
      LHS=result ;

    }
    else {
      String RHS=result ;
      LHS =calculator(LHS,operator,RHS).toString();


    }
    setState(() {

    });
    result=" ";
    operator=operatorclik;
  }
  double? calculator( LHS, operator, RHS){
    double LHSdouble= double.parse(LHS);
    double RHSdouble =double.parse(RHS);

    if (operator=='+'){return LHSdouble+RHSdouble;}
    if (operator=='-'){return LHSdouble-RHSdouble;}
    if (operator=='*'){return LHSdouble*RHSdouble;}
    if (operator=='/'){return LHSdouble/RHSdouble;}





  }
  void OequelClik(){
    print (LHS);
    print(result);
    print(operator);

    result=calculator(LHS,operator,result).toString();
    LHS=" ";
    setState(() {
     
    });



  }
  void OnAcClik(){
    setState(() {
      result="";

    });
    result="";
    print(result);
  }
}


