import 'package:batch_35d_classwork/screens/area_of_circle.dart';
import 'package:batch_35d_classwork/screens/arithmetic_screen.dart';
import 'package:batch_35d_classwork/screens/armstrong_number.dart';
import 'package:batch_35d_classwork/screens/palindrome_screen.dart';
import 'package:batch_35d_classwork/screens/si_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    Center(child: Text("Dashboard Page", style: TextStyle(fontSize: 24))),
    ArithmeticScreen(),
    SiScreen(),
    AreaOfCircle(),
    ArmstrongNumber(),
    PalindromeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton.icon(
                onPressed: () => _onItemTapped(0),
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
              TextButton.icon(
                onPressed: () => _onItemTapped(1),
                icon: Icon(Icons.calculate),
                label: Text("Arithmetic"),
              ),
              TextButton.icon(
                onPressed: () => _onItemTapped(2),
                icon: Icon(Icons.percent),
                label: Text("SI"),
              ),
              TextButton.icon(
                onPressed: () => _onItemTapped(3),
                icon: Icon(Icons.square_foot),
                label: Text("Area"),
              ),
              TextButton.icon(
                onPressed: () => _onItemTapped(4),
                icon: Icon(Icons.star),
                label: Text("Armstrong"),
              ),
              TextButton.icon(
                onPressed: () => _onItemTapped(5),
                icon: Icon(Icons.sync_alt),
                label: Text("Palindrome"),
              ),
            ],
          ),

          VerticalDivider(),

          Expanded(child: _screens[_selectedIndex]),
        ],
      ),
    );
  }
} 


//   Column(
//   children: [
//     TextButton.icon(
//       onPressed: () => _onItemTapped(0),
//       icon: Icon(Icons.home),
//       label: Text("Home"),
//     ),
//     TextButton.icon(
//       onPressed: () => _onItemTapped(1),
//       icon: Icon(Icons.calculate),
//       label: Text("Arithmetic"),
//     ),
//     Expanded(child: _screens[_selectedIndex]), // main content
//   ],
// )


// body: _screens[_selectedIndex],
//      bottomNavigationBar: BottomNavigationBar(currentIndex: _selectedIndex,
//       onTap: _onItemTapped,
//       type: BottomNavigationBarType.fixed,
//       items: const[
//       BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
//       BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Arithemtic"),
//       BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "SI"),
//             BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Area"),
//                         BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Armstrong"),
//                                     BottomNavigationBarItem(icon: Icon(Icons.calculate),label: "Palindrome"),




//      ]),