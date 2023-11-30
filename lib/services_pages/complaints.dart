import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';

class Complaints extends StatefulWidget {
  final String title;
  const Complaints({super.key, required this.title});

  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
          children: [textFeild(textEditingController, 'Hall Ticket', false)]),
    );
  }
}
