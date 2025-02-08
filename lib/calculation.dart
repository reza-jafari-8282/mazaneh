import 'package:flutter/material.dart';

class Calculation extends StatefulWidget {
  Calculation({super.key});

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _controller1 = TextEditingController();

  final TextEditingController _controller2 = TextEditingController();

  final TextEditingController _controller3 = TextEditingController();

  final TextEditingController _controller4 = TextEditingController();

  final TextEditingController _controller5 = TextEditingController();

  final TextEditingController _controller6 = TextEditingController();

  double text1 = -1;
  double text2 = -1;
  double text3 = -1;

  String? _validator(value) {
    if (value == null || value.isEmpty) {
      return 'این فیلد نباید خالی باشد';
    }
    if (!RegExp(r'^[0-9]*\.?[0-9]+$').hasMatch(value)) {
      return 'لطفا عدد وارد کنید';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFF1F3041),
              Color(0xFF00010F),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      const Text(
                        "مظنه",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(29, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                              controller: _controller1,
                              textDirection: TextDirection
                                  .ltr, // Set the text direction to RTL

                              keyboardType: TextInputType.number,
                              validator: _validator,
                              cursorColor: Colors.blue,
                              style: const TextStyle(
                                  color: Color(
                                      0xFFEAF8F8)), // Set the text color to red

                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const Text(
                        "آورده مشتری",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(29, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                              controller: _controller2,
                              textDirection: TextDirection
                                  .ltr, // Set the text direction to RTL

                              keyboardType: TextInputType.number,
                              validator: _validator,
                              cursorColor: Colors.blue,
                              style: const TextStyle(
                                  color: Color(
                                      0xFFEAF8F8)), // Set the text color to red

                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const Text(
                        "وزن طلا (گرم)",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(29, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                              controller: _controller3,
                              textDirection: TextDirection
                                  .ltr, // Set the text direction to RTL

                              keyboardType: TextInputType.number,
                              validator: _validator,
                              cursorColor: Colors.blue,
                              style: const TextStyle(
                                  color: Color(
                                      0xFFEAF8F8)), // Set the text color to red

                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const Text(
                        "اجرت (درصد)",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(29, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                              controller: _controller4,
                              textDirection: TextDirection
                                  .ltr, // Set the text direction to RTL

                              keyboardType: TextInputType.number,
                              validator: _validator,
                              cursorColor: Colors.blue,
                              style: const TextStyle(
                                  color: Color(
                                      0xFFEAF8F8)), // Set the text color to red

                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const Text(
                        "مالیات (درصد)",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(29, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                              controller: _controller5,
                              textDirection: TextDirection
                                  .ltr, // Set the text direction to RTL

                              keyboardType: TextInputType.number,
                              validator: _validator,
                              cursorColor: Colors.blue,
                              style: const TextStyle(
                                  color: Color(
                                      0xFFEAF8F8)), // Set the text color to red

                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const Text(
                        "سود فروشگاه (درصد)",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(29, 255, 255, 255),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                              controller: _controller6,
                              textDirection: TextDirection
                                  .ltr, // Set the text direction to RTL

                              keyboardType: TextInputType.number,
                              validator: _validator,
                              cursorColor: Colors.blue,
                              style: const TextStyle(
                                  color: Color(
                                      0xFFEAF8F8)), // Set the text color to red

                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text(
                        "هر گرم طلا: ${text1 != -1 ? text1 : ''}",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text(
                        "قیمت: ${text2 != -1 ? text2 : ''}",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Text(
                        "وزن طلای آبشده (گرم): ${text3 != -1 ? text3 : ''}",
                        style:
                            TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        text1 =
                            (double.parse(_controller1.text) / 4.3318) * 1.01;
                        text1 = double.parse(text1.toStringAsFixed(2));
                        text2 = (text1 * double.parse(_controller3.text)) *
                            ((double.parse(_controller4.text) / 100) + 1) *
                            ((double.parse(_controller5.text) / 100) + 1) *
                            ((double.parse(_controller6.text) / 100) + 1);
                        text2 = double.parse(text2.toStringAsFixed(2));

                        text3 = double.parse(_controller2.text) / text1;
                        text3 = double.parse(text3.toStringAsFixed(2));
                        setState(() {});
                      }
                    },
                    child: const Text(
                      'محاسبه',
                      style: TextStyle(color: Color(0xFFEAF8F8), fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
