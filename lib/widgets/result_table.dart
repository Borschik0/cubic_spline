import 'package:flutter/material.dart';

class ResultTable extends StatelessWidget {
  List result;
  ResultTable({required this.result, Key? key}) : super(key: key);

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
          const DataCell(Text('Ksi', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18, maxWidth: 35),child: Text('${result[1][0]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[1][1]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[1][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[1][3]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[1][4]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[1][5]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[1][6]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[1][7]}', overflow: TextOverflow.clip,))),
        ]),
        DataRow(cells: <DataCell>[
          const DataCell(Text('Eta', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[2][0]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[2][1]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[2][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[2][3]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[2][4]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[2][5]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[2][6]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[2][7]}', overflow: TextOverflow.clip,))),
        ]),
        DataRow(cells: <DataCell>[
          const DataCell(Text('Ci', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[0][0][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[0][1][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[0][2][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[0][3][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[0][4][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[0][5][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[0][6][2]}', overflow: TextOverflow.clip,))),
          DataCell(ConstrainedBox(constraints: const BoxConstraints(maxHeight: 18,maxWidth: 35),child:Text('${result[0][7][2]}', overflow: TextOverflow.clip,))),
        ]),
      ]),

    );
  }
}
