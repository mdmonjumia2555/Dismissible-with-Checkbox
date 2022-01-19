import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dismissible(
            key: ValueKey("abc"),
            background: Container(
              color: Colors.lightGreen,
              child: Icon(Icons.delete),
            ),
            secondaryBackground: Container(
              color: Colors.blueGrey,
              child: Icon(Icons.delete),
            ),
            child: Container(
              color: Colors.black12,
              child: ListTile(
                focusColor: Colors.pink,
                isThreeLine: true,
                dense: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                trailing: Icon(Icons.ac_unit),
                title: Text(
                  'I love flutter Code',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text('Flutter is my first love'),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Are you Bangladeshi? =>',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Checkbox(
                    activeColor: Colors.green,
                    fillColor: MaterialStateProperty.all(Colors.black),
                    checkColor: Colors.deepOrange,
                    focusColor: Colors.lightGreen,
                    hoverColor: Colors.yellow,
                    value: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = !_value;
                        print(_value);
                      });
                    },
                  ),
                  Text(
                    _value == false
                        ? "No. I am not Bangladeshi"
                        : "Yes. I am Bangladeshi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
