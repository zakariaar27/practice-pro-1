import 'package:flutter/material.dart';

class StackWork extends StatefulWidget {
  const StackWork({Key? key}) : super(key: key);

  @override
  State<StackWork> createState() => _StackWorkState();
}

class _StackWorkState extends State<StackWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Text('Stack Design',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 40,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                child: Icon(Icons.alarm),
                color: Colors.blue,
              ),
              Positioned(
                child: Text(''),
                left: 200,
                bottom: 200,
              )
            ],
          ),
        ],
      ),
    );
  }
}
