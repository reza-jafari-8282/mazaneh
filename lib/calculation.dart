import 'package:flutter/material.dart';
import 'package:mazaneh/molten.dart';
import 'package:mazaneh/ornamental.dart';

class Calculation extends StatefulWidget {
  const Calculation({super.key});

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  int ci = 0;

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ci == 0 ? Ornamental() : Molten(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (n) {
            setState(() {
              ci = n;
            });
          },
          currentIndex: ci,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'زینتی',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_rounded),
              label: 'آبشده',
            ),
          ],
          // currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue[800],
          // onTap: _onItemTapped,
        ),
      ),
    );
  }
}
