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
    child:Column
      (
      children: [
        _customContainer(
          color: Colors.red,
          number: 8,
      ),
      Expanded(
        flex: 5,
        child: Row(
          children:[
          _customContainer(
            color: Colors.indigo,
            number: 5,
        ),
            Expanded(
              flex: 3,
              child:Column
                (
                children:[
                Expanded(
                  flex: 2,
                  child:Row(
                    children:[
                Expanded(
                  flex: 1,
                    child:Column(
                      children:[
                      _customContainer(
                    color: Colors.green,
                    number: 1,
              ),
                        _customContainer(
                          color: Colors.blue,
                          number: 1,
                        ),
                    ],
                    ),
                ), _customContainer(
                        color: Colors.brown,
                        number: 2,
                      ),
              ],
            ),
                ),
                  _customContainer(
                    color: Colors.purple,
                    number: 3,
                  ),
              ],
              ),
            ),
        ],
        ),
      ),
      ],

    ),
  ) ,
  ),
    );
}
 }
 Widget _customContainer (
{
  required int number,
  required Color color,

}){
    return   Expanded(
      flex: number,
      child: Container(
        constraints: BoxConstraints.expand(),
        color: color ,
        child: Center(child: Text('${number}',style:TextStyle(
            color: Colors.white,
            fontSize: 30
        ),
        )
        ),
      ),
    );
 }