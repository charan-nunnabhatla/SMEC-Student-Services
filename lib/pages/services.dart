import 'package:flutter/material.dart';
import 'package:stmarys/pages/service_iteam.dart';
import 'package:stmarys/widgets/app_widgets.dart';

class StudentServices extends StatefulWidget {
  @override
  State<StudentServices> createState() => _StudentServicesState();
}

class _StudentServicesState extends State<StudentServices> {
  @override
  Widget build(BuildContext context) {
    List servicesList = [
      'Bonafied',
      'Check Fee Dues',
      'Take Leave',
      'Certificates',
      'Hostel',
      'Complaint',
      'Others'
    ];
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Select Service'),
        // ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/smec-icon.png',
                    height: 120,
                    width: 120,
                  ),
                ),
                const Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'St. Mary\'s Engineering College',
                        style: TextStyle(
                            fontFamily: 'arial',
                            fontSize: 25,
                            color: Color.fromARGB(224, 7, 255, 214),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Student Services',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 252, 252, 252)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: servicesList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ServiceItem(
                              service: servicesList.elementAtOrNull(index),
                            ),
                          ),
                        );
                      },
                      child: cardWidget(
                        servicesList.elementAt(index),
                        index+1
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
