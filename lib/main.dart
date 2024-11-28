import 'package:flutter/material.dart';

// tạo Stateless Widget

class MyStatelessWidget extends StatelessWidget {// Phần này là viết nội dung
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const Text('Hello'),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless'),// Tiêu đề
        ),
        body: const MyStatefulWidget(),
      ),
    ),
  );
}

// tạo Stateful Widget

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var _counter = 0;
  // Hàm initState
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(
      //   // title: const Text('StatefulWidget'),
      // ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('H',),
              Text(
                '$_counter',
              )
            ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
    );
  }
}

