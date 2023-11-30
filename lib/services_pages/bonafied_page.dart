import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';

class BonafiedPage extends StatefulWidget {
  final String title;
  const BonafiedPage({super.key, required this.title});

  @override
  State<BonafiedPage> createState() => _BonafiedPageState();
}

class _BonafiedPageState extends State<BonafiedPage> {
  TextEditingController bonafiedController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  bool show = false;
  Map details = {};
  late Map<String, dynamic> model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          textFeild(bonafiedController, 'Hall Ticket', false),
          textFeild(reasonController, 'Reason', false,
              maxlines: 1, maxLength: null, upperCase: false),
          ElevatedButton(
              onPressed: () async {
                model = await readCSV(bonafiedController.text);
                setState(() {
                  show = true;
                });
              },
              child: Text('Done')),
          show ? table(model) : Text('No Details found...')
        ],
      ),
    );
  }
}
