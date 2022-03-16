import 'package:elsaresultdemo/rowwidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Result Breakdown', home: ResultBreakdown());
  }
}

class ResultBreakdown extends StatelessWidget {
  const ResultBreakdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenwidth = MediaQuery.of(context).size.width/3;
    var _fullscreenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Breakdown'),
      ),
      body: Center(
        child: Column(
          children: [
            //title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: _screenwidth,
                  height: 50,
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Factor', style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: _screenwidth,
                  height: 50,
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('ELSA Priority', style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: _screenwidth,
                  height: 50,
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Baseline Profile', style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: _fullscreenwidth,
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 10,),
            //results widgets
            //change the print to navigation
            InkWell(
              onTap: () => print('Goto BR Detail page'),
              child: const RowBreakdownWidget(factor: 'Business Resources', priority: '', baselineprofile: 'maturity', bgcolor: Colors.lightGreenAccent,)),
            InkWell(
              onTap: () => print('Goto LCD Detail page'),
              child: const RowBreakdownWidget(factor: 'Leadership and Capability Dev', priority: '', baselineprofile: 'takeoff', bgcolor: Color.fromRGBO(0, 255, 115, 1),)),
            InkWell(
              onTap: () => print('Goto PR Detail page'),
              child: const RowBreakdownWidget(factor: 'Personnel Resources', priority: '⭐️', baselineprofile: 'pre-takeoff', bgcolor: Colors.green,)),
            InkWell(
              onTap: () => print('Goto SR Detail page'),
              child: const RowBreakdownWidget(factor: 'System Resources', priority: '⭐️', baselineprofile: 'pre-takeoff', bgcolor: Colors.green,)),
            InkWell(
              onTap: () => print('Goto FR Detail page'),
              child: const RowBreakdownWidget(factor: 'Financial Resources', priority: '⭐️', baselineprofile: 'pre-takeoff', bgcolor: Colors.green,)),
            const RowBreakdownWidget(factor: 'OVERALL SCORE', priority: '', baselineprofile: 'takeoff', bgcolor: Color.fromRGBO(0, 255, 115, 1),),  
          ],
        ),
      ),
    );
  }
}
