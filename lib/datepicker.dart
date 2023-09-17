import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime presentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Date time '),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 200,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('When You Born?'),
            TextFormField(
              onTap: () => GiveDate(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange))),
            ),
            ElevatedButton(
                onPressed: () {
                  print(presentDate);
                },
                child: Text('Choose date'))
          ],
        ),
      ),
    );
  }

  GiveDate() {
    final date = showDatePicker(
        context: context,
        initialDate: presentDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2040));
  }
}
