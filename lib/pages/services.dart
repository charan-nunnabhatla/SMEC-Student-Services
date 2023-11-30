import 'package:flutter/material.dart';
import 'package:stmarys/widgets/app_widgets.dart';

import 'package:stmarys/services_pages/bonafied_page.dart';
import 'package:stmarys/services_pages/certificates.dart';
import 'package:stmarys/services_pages/check_fee.dart';
import 'package:stmarys/services_pages/complaints.dart';
import 'package:stmarys/services_pages/hostel.dart';
import 'package:stmarys/services_pages/others.dart';
import 'package:stmarys/services_pages/take_leave.dart';

class StudentServices extends StatefulWidget {
  const StudentServices({super.key});

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
          children: [
            const SizedBox(
              height: 40,
            ),
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
            Expanded(
              child: ListView.builder(
                  itemCount: servicesList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            // bonafied
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const BonafiedPage(
                                  title: 'Bonafied',
                                ),
                              ),
                            );
                            break;
                          case 1:
                            // fee due
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CheckFee(
                                  title: 'Fee Due',
                                ),
                              ),
                            );
                            break;
                          case 2:
                            //leave
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const TakeLeave(
                                  title: 'Leave',
                                ),
                              ),
                            );
                            break;
                          case 3:
                            //certificates
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Certificate(
                                  title: 'Certificate',
                                ),
                              ),
                            );
                            break;
                          case 4:
                            //hostel
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Hostel(
                                  title: 'Hostel',
                                ),
                              ),
                            );
                            break;
                          case 5:
                            //complaint
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Complaints(
                                  title: 'Complaints',
                                ),
                              ),
                            );
                            break;
                          case 6:
                            //others
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Others(
                                  title: 'Others',
                                ),
                              ),
                            );
                            break;
                        }
                      },
                      child:
                          cardWidget(servicesList.elementAt(index), index + 1),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
