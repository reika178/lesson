import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ドリルスタート！',
            ),
            Text(
              '問題①Rowで横に並べる',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
            Text(
              '問題②RowとColumnの組み合わせ',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ]
            ),
            Text('ドリル④丸とStack'),
            Stack(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.all(24),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('お名前'),
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        // height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '送信',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                          ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 4,
                  top: 4,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
