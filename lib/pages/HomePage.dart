
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:calculator/utils/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text = "";
  var number = "";
  final double _scaleFactor = 1.0;



  _onClear() {
    setState(() {
      text = "";
      number = "";
    });
  }

  _onDelete() {
    setState(() {
      text = text.substring(0, text.length - 1);
      number = "";
    });

    
  }

  _onAdd(int num) {
    // action.add(num);
    setState(() {
      text += num.toString();
    });
  }

  _onMath(String str) {

    setState(() {
      text += str;
     // equalPressed();
    });
  }

  _onEqual(){
    setState(() {
      Parser p = Parser();
      Expression exp = p.parse(text);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      text = eval.toString();
    });
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: MyColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(),
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onClear(),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button2,
                    ),
                    child: const Center(
                        child: Text(
                      "C",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onDelete(),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button2,
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.backspace_outlined,
                      color: Colors.white,
                      size: 28,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onMath("%"),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button2,
                    ),
                    child: const Center(
                        child: Text(
                      "%",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () =>  _onMath("/"),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button,
                    ),
                    child: const Center(
                        child: Text(
                      "÷",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(7),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "7",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(8),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "8",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(9),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "9",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onMath("*"),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button,
                    ),
                    child: const Center(
                        child: Text(
                      "×",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(4),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "4",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(5),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "5",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(6),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "6",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onMath("-"),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button,
                    ),
                    child: const Center(
                        child: Text(
                      "-",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(1),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(2),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(3),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "3",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onMath("+"),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button,
                    ),
                    child: const Center(
                        child: Text(
                      "+",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onAdd(0),
                  child: Container(
                    width: 152,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      "0",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onMath("."),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button3,
                    ),
                    child: const Center(
                        child: Text(
                      ".",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                BouncingWidget(
                  scaleFactor: _scaleFactor,
                  onPressed: () => _onEqual(),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(
                        Radius.circular(12),
                      ),
                      color: MyColors.button,
                    ),
                    child: const Center(
                        child: Text(
                      "=",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 34,
          ),
        ],
      ),
    ));
  }
}
