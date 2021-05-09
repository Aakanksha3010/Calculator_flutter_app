import 'package:flutter/material.dart';


class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  int firstnum;
  int secondnum;
  String res ;
  String operatorUsed ;
  String texttodisplay = ' ';
  //function for action of buttion when pressed
  void buttonClicked( String buttonVal){
    if(buttonVal == "C"){
      texttodisplay = '';
      firstnum = 0;
      secondnum =0;
      res = '';  
    }
    else if(buttonVal == "+" || buttonVal == "-" || buttonVal == "x" || buttonVal == "/"){
      firstnum = int.parse(texttodisplay);
      res = '';
      operatorUsed = buttonVal;
    }
    else if (buttonVal == "="){
      secondnum = int.parse(texttodisplay);
      if(operatorUsed == "+"){
        res = (firstnum + secondnum).toString();
      }
       if(operatorUsed == "-"){
        res = (firstnum - secondnum).toString();
      }
       if(operatorUsed == "x"){
        res = (firstnum * secondnum).toString();
      }
       if(operatorUsed == "/"){
        res = (firstnum / secondnum).toString();
      }
    }
    else{
        res = int.parse(texttodisplay + buttonVal).toString();
      }
    setState(() {
          texttodisplay = res;
        });
        
 }

  final text_calc = TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold);
  // creating custom widget
  Widget customButton (String buttonVal) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(padding: EdgeInsets.all(25.0)),
        onPressed: () => buttonClicked(buttonVal),
        child: Text("$buttonVal",style: text_calc),
      ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator',style: text_calc),centerTitle: true,elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Expanded(
               child: Container(
                 alignment: Alignment.bottomRight,
                 child: Text("$texttodisplay",style: text_calc),
                 padding: EdgeInsets.all(10.0),

            ),
             ),
             Row(
              children: [
                customButton("9"),
                customButton("8"),
                customButton("7"),
                customButton("+"),
              ],
            ),
             Row(
              children: [
                customButton("6"),
                customButton("5"),
                customButton("4"),
                customButton("-"),
              ],
            ),
             Row(
              children: [
                customButton("3"),
                customButton("2"),
                customButton("1"),
                customButton("x"),
              ],
            ),
             Row(
              children: [
                customButton("C"),
                customButton("0"),
                customButton("="),
                customButton("/"),
              ],
            ),
          ],
        ),
        

        
      ),
      
    );
  }
}