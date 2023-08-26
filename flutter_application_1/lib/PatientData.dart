import 'package:flutter/material.dart';

class Patient_Data extends StatefulWidget {
  const Patient_Data({super.key});

  @override
  State<Patient_Data> createState() => _MainPageState();
}

class _MainPageState extends State<Patient_Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Your Data')
      ),
      body: ListView(
        children: [
          _createDataTable()
        ],
      )
    );
  }
}


DataTable _createDataTable() {
  return DataTable(columns: _createColumns(), 
      rows: _createRows(), 
      dividerThickness: 5, 
      dataRowHeight: 80,
      showBottomBorder: true,
      headingTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
      headingRowColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.black
                      ),
  );
}
List<DataColumn> _createColumns() {
  return [
    DataColumn(label: Text('CATEGORIES')),
    DataColumn(label: Text('YOUR DATA'))
  ];
}
List<DataRow> _createRows() {
  return [
    DataRow(cells: [
      DataCell(Text('HOSPITAL NAME')),
      DataCell(Text('ASTRAL EXPRESS')),
    ]),
    DataRow(cells: [
      DataCell(Text('DOCTOR NAME')),
      DataCell(Text('MR. YANG')),
    ]),
    DataRow(cells: [
      DataCell(Text('PATIENT #')),
      DataCell(Text('001')),
    ]),
    DataRow(cells: [
      DataCell(Text('NAME')),
      DataCell(Text('DAN HENG', style: TextStyle(fontWeight: FontWeight.bold)))
    ]),
    DataRow(cells: [
      DataCell(Text('AGE')),
      DataCell(Text('??'))
    ]),
    DataRow(cells: [
      DataCell(Text('SEX')),
      DataCell(Text('DRAGON')),
    ]),
    DataRow(cells: [
      DataCell(Text('TEST RESULT')),
      DataCell(Text('WHO KNOWS')),
    ]),
    DataRow(cells: [
      DataCell(Text('SEVERITY')),
      DataCell(Text('SEVERELY'))
    ])
  ];
}