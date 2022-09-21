import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:light_code_examples/first_screen/get_value_text.dart';

class TextDublicateScreen extends StatefulWidget {
  const TextDublicateScreen({Key? key}) : super(key: key);

  @override
  State<TextDublicateScreen> createState() => _TextDublicateScreenState();
}

class _TextDublicateScreenState extends State<TextDublicateScreen> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 100.h,
          left: 20.w,
        ),
        child: Container(
          width: 340.w,
          height: 500.h,
          color: Colors.green,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80.h, left: 10.w, right: 10.w),
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    hintStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Enter text to dublicate",
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                  margin: const EdgeInsets.all(25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(320, 50),
                    ),
                    child:  const Text(
                      "Press to get value",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => GetValueScreen(
                                    value: myController.text,
                                  ))));
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
