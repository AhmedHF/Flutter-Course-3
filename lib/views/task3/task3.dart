import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  @override
  _Task3State createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  String activeImage = 'assets/images/task3/1.png';
  int _counter = 1;
  void setActiveImage() {
    setState(() {
      _counter++;
      if (_counter == 5) {
        _counter = 1;
      }
      activeImage = 'assets/images/task3/$_counter.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Task 3"),
      ),
      body: InkWell(
        onTap: () => {
          setState(() {
            _counter++;
            if (_counter == 5) {
              _counter = 1;
            }
            activeImage = 'assets/images/task3/$_counter.png';
          })
        },
        child: Center(
          child: Image(
            image: AssetImage(activeImage),
            width: 100,
            height: 100,
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
