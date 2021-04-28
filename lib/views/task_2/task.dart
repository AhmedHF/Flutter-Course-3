import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  @override
  _Task2State createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  renderRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/1.png'),
                    width: 100,
                    height: 100,
                  ),
                  Text("ahmed hassan",
                      style: TextStyle(backgroundColor: Colors.grey[300]))
                ]),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/2.png'),
                    width: 100,
                    height: 100,
                  ),
                  Text("ahmed hassan",
                      style: TextStyle(backgroundColor: Colors.grey[300]))
                ]),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/3.png'),
                    width: 100,
                    height: 100,
                  ),
                  Text("ahmed hassan",
                      style: TextStyle(backgroundColor: Colors.grey[300]))
                ]),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Task 2"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(child: renderRow()),
              Container(child: renderRow()),
              Container(child: renderRow()),
            ]),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
