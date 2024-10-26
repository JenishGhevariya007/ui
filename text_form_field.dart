import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/Common/extension_sizedbox.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({super.key});

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String Email = "jenishghevariya3@gmail.com";
  String Password = "Jenish@2003";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  bool validEmail = RegExp(
                          "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                      .hasMatch(value!);

                  if (validEmail) {
                    return null;
                  } else {
                    return "Please enter valid Email";
                  }
                },
                controller: email,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              3.h.addHSpace(),
              TextFormField(
                validator: (value) {
                  bool validPassword = RegExp(
                          "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                      .hasMatch(value!);
                  if (validPassword) {
                    return null;
                  } else {
                    return "please enter valid password";
                  }
                },
                controller: password,
                decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              4.h.addHSpace(),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (Email == email.text && Password == password.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Center(
                            child: Text("Log In Successfully"),
                          ),
                        ),
                      );
                    } else if (Email != email.text &&
                        Password != password.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Email and Password both are wrong"),
                        ),
                      );
                    } else if (Email != email.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Email is wrong"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Password is +"
                              " wrong"),
                        ),
                      );
                    }
                  }
                },
                child: const Text("Log In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
