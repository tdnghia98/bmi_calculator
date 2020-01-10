import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF090C22),
        accentColor: Color(0xFFEA1556),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Color(0xFF818491),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEA1556),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.all(15.0),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1F33),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: EdgeInsets.all(15.0),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1F33),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: EdgeInsets.all(15.0),
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEA1556),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.all(15.0),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1F33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.all(15.0),
                  ),
                ),
              ],
            )),
            // Row(
            //   children: <Widget>[
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //           color: Color(0xFF1D1F33),
            //           borderRadius: BorderRadius.circular(10.0),
            //         ),
            //         margin: EdgeInsets.all(15.0),
            //       ),
            //     ),
            //     Expanded(
            //       child: Container(
            //         decoration: BoxDecoration(
            //           color: Color(0xFF1D1F33),
            //           borderRadius: BorderRadius.circular(10.0),
            //         ),
            //         margin: EdgeInsets.all(15.0),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
