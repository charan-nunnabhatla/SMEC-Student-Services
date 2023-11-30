import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';

class Certificate extends StatefulWidget {
  final String title;
  const Certificate({super.key, required this.title});

  @override
  State<Certificate> createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
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
