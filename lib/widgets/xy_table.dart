import 'package:flutter/material.dart';

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
      ], rows: const <DataRow> [
        DataRow(cells: <DataCell>[
          DataCell(Text('x', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))),
          DataCell(Text('-4')),
          DataCell(Text('-3')),
          DataCell(Text('-2')),
          DataCell(Text('-1')),
          DataCell(Text('0')),
          DataCell(Text('1')),
          DataCell(Text('2')),
          DataCell(Text('3')),
          DataCell(Text('4')),
        ]),
        DataRow(cells: <DataCell>[
          DataCell(Text('y', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))),
          DataCell(Text('-3,02721')),
          DataCell(Text('0,42336')),
          DataCell(Text('1,81859')),
          DataCell(Text('0,84147')),
          DataCell(Text('0')),
          DataCell(Text('0,84147')),
          DataCell(Text('1,81859')),
          DataCell(Text('0,42336')),
          DataCell(Text('-3,02721')),
        ]),
      ]),
    );
  }
}
