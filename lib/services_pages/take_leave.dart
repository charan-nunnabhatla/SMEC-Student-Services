import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';

class TakeLeave extends StatefulWidget {
  final String title;
  const TakeLeave({super.key, required this.title});

  @override
  State<TakeLeave> createState() => _TakeLeaveState();
}

class _TakeLeaveState extends State<TakeLeave> {
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
