import 'package:flutter/material.dart';

import '../coordinates.dart';

class TableXY extends StatelessWidget {
  const TableXY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: DataTable(
        border: const TableBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          top: BorderSide(width: 1, color: Colors.black26),
          bottom: BorderSide(width: 1, color: Colors.black26),
          left: BorderSide(width: 1, color: Colors.black26),
          right: BorderSide(width: 1, color: Colors.black26),
        ),
        dividerThickness: 1,
          columns: const <DataColumn>[
        DataColumn(label: Expanded(
          child: Text('i', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('0', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('1', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('2', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('3', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('4', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('5', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('6', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('7', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
        DataColumn(label: Expanded(
            child: Text('8', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)
        )),
      ], rows:  <DataRow> [
        DataRow(cells: <DataCell>[
          const DataCell(Text('x', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))),
          DataCell(Text('${x[0]}')),
          DataCell(Text('${x[1]}')),
          DataCell(Text('${x[2]}')),
          DataCell(Text('${x[3]}')),
          DataCell(Text('${x[4]}')),
          DataCell(Text('${x[5]}')),
          DataCell(Text('${x[6]}')),
          DataCell(Text('${x[7]}')),
          DataCell(Text('${x[8]}')),
        ]),
        DataRow(cells: <DataCell>[
          const DataCell(Text('y', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))),
          DataCell(Text('${y[0]}')),
          DataCell(Text('${y[1]}')),
          DataCell(Text('${y[2]}')),
          DataCell(Text('${y[3]}')),
          DataCell(Text('${y[4]}')),
          DataCell(Text('${y[5]}')),
          DataCell(Text('${y[6]}')),
          DataCell(Text('${y[7]}')),
          DataCell(Text('${y[8]}')),
        ]),
      ]),
    );
  }
}
