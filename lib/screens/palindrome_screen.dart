import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});

  @override
  State<PalindromeScreen> createState() => PalindromeScreenState();
}

class PalindromeScreenState extends State<PalindromeScreen> {
  final TextEditingController _checkNumber = TextEditingController();
  String? _result;
  
  void _checkPalindrome(){
    int number = int.tryParse(_checkNumber.text)?? 0;
    int temp = number;
    int reverse =0;
    while(temp > 0){
      int lastDigit = temp % 10;
      reverse = reverse*10+ lastDigit;
      temp = temp ~/10;
    }
    setState(() {
      if( reverse == number){
          _result = "Palindrome";
      }else{
        _result = "not palindrome";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),child: 
    Column(children: [
      Text("Check Palindrome Number",
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        
      ),
      SizedBox(height: 20,),
      TextField(
        controller: _checkNumber,
        decoration: InputDecoration(
          labelText: "Enter a number"
        ),
      ),
      SizedBox(height: 15,),
      ElevatedButton(onPressed: _checkPalindrome, child: 
      Text("Check ")
      ),
      SizedBox(height: 20,),
      Text('$_result')

    ],),);
  }
}