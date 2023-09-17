import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottonWork extends StatefulWidget {
  const BottonWork({Key? key}) : super(key: key);

  @override
  State<BottonWork> createState() => _BottonWorkState();
}

class _BottonWorkState extends State<BottonWork> {
  final userKey = GlobalKey<FormState>();
  DateTime currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final date = "${currentDate.year}-${currentDate.month}- ${currentDate.day}";
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Button & TextFromField'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 150, right: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Text(
                'Student Information',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
            ),
            Center(
              child: Form(
                key: userKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      maxLength: 20,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'field can not be empty';
                        } else {
                          return 'field can empty';
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.amber, width: 3)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 3)),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 3))),
                    ),
                    TextFormField(
                      maxLength: 20,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'field can not be empty';
                        } else {
                          return 'field can empty';
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.amber, width: 3)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 3)),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 3))),
                    ),
                    TextFormField(
                      maxLength: 20,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'field can not be empty';
                        } else {
                          return 'field can empty';
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.amber, width: 3)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 3)),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 3))),
                    ),
                    TextFormField(
                      maxLength: 20,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'field can not be empty';
                        } else {
                          return 'field can empty';
                        }
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.amber, width: 3)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 3)),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 3))),
                    ),
                    TextFormField(
                      onTap: () => showDate(),

                      // readOnly: true,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return 'field can not be empty';
                        } else {
                          return 'field can empty';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "$date",
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.amber, width: 3)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 3)),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 3))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        kRow(),
                        ElevatedButton(
                            onPressed: () {
                              if (userKey.currentState!.validate()) {
                                print("validate");
                              }
                            },
                            child: Text("submit")),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print(currentDate);
                        },
                        child: Text("Show Date"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  kRow() {
    return Row(
      children: [
        Text('Are you a Employee'),
        TextButton(
            onPressed: () {
              print('it is valid person');
            },
            child: Text('Click Here')),
      ],
    );
  }

  showDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2030));

    if (date != null) {}
  }
}
