import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({super.key});

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List gender = ["Male", "Female"];
  var selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          dropdownColor: Colors.green,
          iconDisabledColor: Colors.red,
          iconEnabledColor: Colors.redAccent,
          underline: SizedBox(),
          isExpanded: true,
          hint: Text("Select Gender"),
          value: selectGender,
          items: List.generate(
            gender.length,
            (index) => DropdownMenuItem(
              value: gender[index],
              child: Text("${gender[index]}"),
            ),
          ),
          onChanged: (value) {
            setState(() {
              selectGender = value;
            });
          },
        ),
      ),
    );
  }
}
