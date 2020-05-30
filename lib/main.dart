import 'package:flutter/material.dart';
import 'package:simple_password/passcorrectscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String password = "1234";
  String passAttempt = "";
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _updatePass(String num){
    setState(() {
      passAttempt += num;
      if(passAttempt.length == password.length){
        if(passAttempt == password){
          print("password correct");
          Navigator.push(context, MaterialPageRoute(builder: (_) => PassCorrect()));
        }
        else{
          print("password incorrect, try again");
          passAttempt = "";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 20.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  passAttempt,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child: Text('1'),
                      onPressed: () => _updatePass("1")
                    ),
                    FlatButton(
                      child: Text('2'),
                        onPressed: () => _updatePass("2")
                    ),
                    FlatButton(
                      child: Text('3'),
                        onPressed: () => _updatePass("3")
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child: Text('4'),
                        onPressed: () => _updatePass("4")
                    ),
                    FlatButton(
                      child: Text('5'),
                        onPressed: () => _updatePass("5")
                    ),
                    FlatButton(
                      child: Text('6'),
                        onPressed: () => _updatePass("6")
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child: Text('7'),
                        onPressed: () => _updatePass("7")
                    ),
                    FlatButton(
                      child: Text('8'),
                        onPressed: () => _updatePass("8")
                    ),
                    FlatButton(
                      child: Text('9'),
                        onPressed: () => _updatePass("9")
                    ),
                  ],
                ),

              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
