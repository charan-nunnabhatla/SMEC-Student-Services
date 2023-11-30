import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';

class CheckFee extends StatefulWidget {
  final String title;
  const CheckFee({super.key, required this.title});

  @override
  State<CheckFee> createState() => _CheckFeeState();
}

class _CheckFeeState extends State<CheckFee> {
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
