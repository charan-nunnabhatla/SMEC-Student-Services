import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';
import 'package:stmarys/pages/sectionpage.dart';

class StMarysHomePage extends StatefulWidget {
  const StMarysHomePage({super.key});

  @override
  State<StMarysHomePage> createState() => StMarysHomePageState();
}

class StMarysHomePageState extends State<StMarysHomePage> {
  final hallticketController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('St.Mary\'s Engineering College'),
        const Text('Student Services'),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textFeild(hallticketController, 'Hall-ticket', false),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SectionPage()));
          },
          child: Container(
            height: 40,
            width: 80,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 119, 173, 177),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: Text('  Next  ')),
            ),
          ),
        )
      ]),
    );
  }
}
