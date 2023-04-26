import 'package:flutter/material.dart';

void main()
{

  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
  return MaterialApp(
      home: Scaffold(
  body:SafeArea(
    child:Row
      (
      children: [
         
        Container(
              padding: EdgeInsets.all(20),
              color: Colors.red,
              child: Text('1'),
            ),
          
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Text('2'),
          ),
        ),
        
        Expanded(
          flex: 8,
          child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.green,
              child: Text('3'),
            ),
        ),
      ],
    ),

  ) ,
  ),
      );

}
  }