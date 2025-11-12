import 'dart:math';
import 'package:flutter/material.dart';

class ArmstrongNumber extends StatefulWidget {
  const ArmstrongNumber({super.key});

  @override
  State<ArmstrongNumber> createState() => ArmstrongNumberState();
}

class ArmstrongNumberState extends State<ArmstrongNumber> {
  final TextEditingController _number = TextEditingController();
  String? _result;

  void _checkArmstrongNumber(){
    int number = int.tryParse(_number.text)??0;
    int sum =0;
    int temp = number;
    int digits =number.toString().length;
    while(temp > 0){
      int lastDigit = temp % 10;
      sum += pow(lastDigit, digits).toInt();
      temp = temp ~/10;

  }
  setState(() {
    
 
    if(sum == number){
      _result = "Armstrong";
    }else{
      _result = "not armstrong";
    }
     });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),child: 
    Column(children: [
      Text("Check Armstrong Number",style: TextStyle(
        fontSize: 15,fontWeight: FontWeight.bold
      ),),
      SizedBox(height: 20,),
      TextField(
        controller: _number,
        decoration: InputDecoration(labelText: "Enter a number"),),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: _checkArmstrongNumber, child: 
        Text("Check")),
        SizedBox(height: 20,),
        Text('$_result')

    ],),);
  }
}