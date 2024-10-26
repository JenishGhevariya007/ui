import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShowModalBottomSheetDemo extends StatefulWidget {
  const ShowModalBottomSheetDemo({super.key});

  @override
  State<ShowModalBottomSheetDemo> createState() =>
      _ShowModalBottomSheetDemoState();
}

class _ShowModalBottomSheetDemoState extends State<ShowModalBottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.red,
              barrierColor: Colors.grey,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                ),
              ),
              context: context,
              builder: (context) {
                return BottomSheetShow();
              },
            );
          },
          child: const Text("Show Modal Bottom Sheet"),
        ),
      ),
    );
  }
}

class BottomSheetShow extends StatefulWidget {
  const BottomSheetShow({super.key});

  @override
  State<BottomSheetShow> createState() => _BottomSheetShowState();
}

class _BottomSheetShowState extends State<BottomSheetShow> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return const SizedBox(
          height: 600,
          width: 500,
          child: Column(
            children: [
              Text(
                "Hello",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        );
      },
    );
  }
}
