import 'package:cubic_spline/spline.dart';
import 'package:cubic_spline/widgets/result_table.dart';
import 'package:flutter/material.dart';
import '../coordinates.dart';
import 'widgets/xy_table.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _resultList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cubic Spline'),),
      body: Column(
        children: <Widget> [
          const SizedBox(width: double.infinity,child: TableXY()),
          SizedBox(
            width: 120,
            child: ElevatedButton(onPressed: () {
              setState(() {
                List result = CubicSpline(x: x, y: y).create();
                _resultList.isEmpty ? _resultList.add( ResultTable(result: result,)) : null;
              });
            } , child: const Text('Результаты')),
          ),
          const SizedBox(height: 5,),
          SizedBox(
            width: 120,
            child: ElevatedButton(onPressed: () {
              setState(() {
                _resultList.clear();
              });
            } , child: const Text('Очистить')),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _resultList.length,
                itemBuilder: (context,index){
                  return _resultList[index];
                }),
          )
        ],
      ),
    );
  }
}
