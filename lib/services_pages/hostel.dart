import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';

class Hostel extends StatefulWidget {
  final String title;
  const Hostel({super.key, required this.title});

  @override
  State<Hostel> createState() => _HostelState();
}

class _HostelState extends State<Hostel> {
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
