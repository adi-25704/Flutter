import 'package:flutter/material.dart';


class Allocation_Suggestion extends StatefulWidget {
  const Allocation_Suggestion({super.key});

  @override
  State<Allocation_Suggestion> createState() => _Allocation_SuggesionState();
}

class _Allocation_SuggesionState extends State<Allocation_Suggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Allocation Suggestion'),
        backgroundColor: Colors.red,
      ),
    );
  }
}