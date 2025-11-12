import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => AreaOfCircleState();
}

class AreaOfCircleState extends State<AreaOfCircle> {
  final TextEditingController _radiusController = TextEditingController();
  double? _result;
  void _calculateAreaOfCircle(){
    double radius = double.tryParse(_radiusController.text)??0;
    setState(() {
      _result = (radius*radius*3.14);
    });
  }
  @override
  Widget build(BuildContext context) {
    return 
    Padding(padding: EdgeInsets.all(16),
    child: Column(children: [
      Text("Area of Circle",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      SizedBox(height: 20,),
      TextField(controller: _radiusController,
        decoration:InputDecoration(
          labelText: "Radius"
        ),),
        ElevatedButton(onPressed: _calculateAreaOfCircle, child: 
          Text("Calculate Area of circle")
        ),
        SizedBox(height: 20,),
        Text("Area of Circle:$_result")

    ],));
}
}