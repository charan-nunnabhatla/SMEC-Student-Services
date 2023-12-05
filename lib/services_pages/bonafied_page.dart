import 'package:cloud_firestore/cloud_firestore.dart';
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
  late Map<String, dynamic> details;
  final db = FirebaseFirestore.instance;

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
              details = await readCSV(bonafiedController.text);
              db.collection('bonafied').doc('details').set(details).onError(
                (error, stackTrace) {
                  print(error);
                },
              );
              setState(() {
                show = true;
              });
            },
            child: const Text('Done'),
          ),
          show ? table(details) : const Text('No Details found...')
        ],
      ),
    );
  }
}
