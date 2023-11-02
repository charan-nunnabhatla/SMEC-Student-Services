import 'package:flutter/material.dart';
import 'package:stmarys/pages/services.dart';

class SectionPage extends StatefulWidget {
  const SectionPage({super.key});

  @override
  State<SectionPage> createState() => SectionPageState();
}

class SectionPageState extends State<SectionPage> {
  // Widget sectionBlock(String college, String section, String hodName) {
  //   return InkWell(
  //     onTap: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (_) => StudentServices(
  //             section: section,
  //             college: college,
  //           ),
  //         ),
  //       );
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: Container(
  //         height: 100,
  //         width: 200,
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10),
  //           color: const Color.fromARGB(162, 138, 235, 230),
  //         ),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           // crossAxisAlignment: CrossAxisAlignment.center,
  //           children: [Text(section), Text(hodName)],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    List colleges = ['SMEC', 'SMGOIH'];
    List sections = ['A', 'B', 'C'];
    List courses = ['AIML', 'DS', 'CS', 'CSE'];

    List finalList = [];
    for (var co in colleges) {
      for (var s in sections) {
        for (var c in courses) {
          finalList.add('$c-$s $co');
        }
      }
    }
    // print(finalList);
    return Scaffold(
      appBar: AppBar(title: const Text('Section')),
      body: ListView.builder(
          itemCount: finalList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => StudentServices(),
                  ),
                );
              },
              child: Card(
                child: Text(finalList.elementAt(index)),
              ),
            );
          }),
    );
  }
}
