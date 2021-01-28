import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  @override
  _Exercise1State createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  var data = 0.0;
  bool isEdittingDegreeF = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 1'),
      ),
      body: Column(
        children: [
          WidgetTextField(
              controller: TextEditingController(
                  text: isEdittingDegreeF
                      ? '$data'
                      : '${((data * 1.8) + 32).toStringAsFixed(1)}'),
              hint: '\u2109 ',
              onChanged: (value) {
                isEdittingDegreeF = true;
                data = double.tryParse(value);
              }),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: () {
                  setState(() {});
                },
                color: Colors.green,
                child: Text(
                  '\u2103 <-> \u2109',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          WidgetTextField(
              controller: TextEditingController(
                  text: isEdittingDegreeF
                      ? '${((data - 32) / 1.8).toStringAsFixed(1)}'
                      : '$data'),
              hint: '\u2103 ',
              onChanged: (value) {
                isEdittingDegreeF = false;
                data = double.tryParse(value);
              }),
        ],
      ),
    );
  }
}

class WidgetTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;
  final String hint;
  const WidgetTextField(
      {@required this.controller,
      @required this.onChanged,
      @required this.hint});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.35),
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(prefixText: hint, border: InputBorder.none),
        onChanged: onChanged,
      ),
    );
  }
}
