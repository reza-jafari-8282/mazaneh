import 'package:flutter/material.dart';
import 'package:mazaneh/calculation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مظنه',
      theme: ThemeData(
        fontFamily: "vazirmatn",
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 2600), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Calculation()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF1F3041),
          Color(0xFF00010F),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/3309977.png",
                  width: width * 0.50,
                ),
                Text(
                  "مظنه",
                  style: TextStyle(
                    fontSize: width / 12,
                    color: Color(0xFFefb31f),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
