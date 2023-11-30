import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';

class Others extends StatefulWidget {
  final String title;
  const Others({super.key, required this.title});

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
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
