import 'package:bmi_calculator/widgets/calculateBMI.dart';
import 'package:bmi_calculator/widgets/createField.dart';
import 'package:bmi_calculator/widgets/left_shapes.dart';
import 'package:bmi_calculator/widgets/right_shapes.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainClass());
}

class MainClass extends StatefulWidget {
  const MainClass({super.key});

  @override
  State<MainClass> createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {

  // App Sates

  final TextEditingController ghad = TextEditingController();
  final TextEditingController vazn = TextEditingController();
  double resultBMI = 0;
  String resultText = '';

  double goodWidth = 50;
  double badWidth = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dm'),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: getAppBar(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: getAppBody(),
        ),
      ),
    );
  }

  Widget getAppBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Voroodi ha
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputField(
              hintText: 'وزن',
              controller: vazn,
            ),
            SizedBox(width: 5),
            InputField(
              hintText: 'قد',
              controller: ghad,
            ),
          ],
        ),
        // Dokme Mohasebe
        GestureDetector(
          onTap: () {
            setState(() {
              if (ghad.text != '' &&
                  vazn.text != '' &&
                  double.parse(vazn.text) > 0 &&
                  double.parse(ghad.text) > 0) {
                resultBMI = calculateBMI(
                  double.parse(vazn.text),
                  double.parse(ghad.text),
                );
                resultText = getBmiText(resultBMI);
                Map bmiSize = getBMISize(resultBMI);
                goodWidth = bmiSize['goodWidth'];
                badWidth = bmiSize['badWidth'];
              }
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              width: 260,
              height: 80,
              color: Colors.blueGrey[50],
              child: Center(
                child: Text(
                  "محاسبه کن !",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        // Namayesh Adad BMI
        Text(
          "${resultBMI.toStringAsFixed(2)}",
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Namayesh Vaziat
        Text(
          "$resultText",
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 25,
            color: getBmiColor(resultBMI),
          ),
        ),
        Divider(
          thickness: 1.2,
        ),
        Text("نمودار شاخص سلامت"),
        Column(
          children: [
            LeftShape(width: goodWidth, height: 45),
            SizedBox(height: 15),
            RightShape(width: badWidth, height: 50)
          ],
        ),
        SizedBox()
      ],
    );
  }

  AppBar getAppBar() {
    return AppBar(
      title: Text(
        "تو چنده ؟ BMI",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
