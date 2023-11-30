import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:stmarys/widgets/details_model.dart';

Widget table(Map<String, dynamic> mapData) {
  List<TableRow> data = [];
  mapData.forEach(
    (key, value) {
      data.add(
        TableRow(
          decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(12),
              color: Color(0xff1e2d2f)),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                key,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xffbeffc7)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                value,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xffbeffc7)),
              ),
            ),
          ],
        ),
      );
    },
  );

  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Table(
        border: TableBorder.all(
            color: const Color.fromARGB(255, 95, 141, 141),
            // borderRadius: BorderRadius.circular(12),
            width: 1),
        children: [...data],
      ),
    ),
  );
}

Future<Map<String, dynamic>> readCSV(String hallticket) async {
  late DetailsModel data;
  String csvString =
      await rootBundle.loadString('assets/SMEC-AIML.csv', cache: false);
  List<List<dynamic>> csvTable = const CsvToListConverter().convert(csvString);
  for (var student in csvTable) {
    if (student.contains(hallticket)) {
      data = DetailsModel(
          name: student.elementAt(0),
          gender: student.elementAt(1),
          category: student.elementAt(2),
          state: student.elementAt(3),
          nationality: student.elementAt(4),
          email: student.elementAt(5),
          course: student.elementAt(6),
          hallticket: student.elementAt(7),
          moblie: student.elementAt(8).toString(),
          joining: student.elementAt(9));
      break;
    }
  }

  return data.toMap();
}

Widget textFeild(
    TextEditingController textEditingController, String lable, bool obscureText,
    {var maxlines = 1, var maxLength = 10, var upperCase = true}) {
  return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        maxLength: maxLength,
        maxLines: maxlines,
        obscureText: obscureText,
        // textCapitalization: TextCapitalization.characters,
        onChanged: (value) {
          textEditingController.value = TextEditingValue(
              text: upperCase ? value.toUpperCase() : value,
              selection: textEditingController.selection);
        },
        style: const TextStyle(
            color: Color.fromARGB(224, 7, 255, 214),
            fontSize: 20,
            fontWeight: FontWeight.w800,
            fontFamily: 'arial'),
        // strutStyle: const StrutStyle(
        // fontFamily: 'arial', fontSize: 10, fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
        // onSubmitted: (value) => setState(() {}),
        controller: textEditingController,
        decoration: InputDecoration(
          // hintText: 'HallTicket Number',
          label: Text(lable),
          floatingLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 142, 187, 218),
          ),
          labelStyle: const TextStyle(
            fontFamily: 'arial',
            // fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 92, 92, 92),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 67, 212, 152)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ));
}

Widget cardWidget(String title, int index) {
  return Card(
    margin: const EdgeInsets.all(3),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        '$index.\t$title',
        style: const TextStyle(fontSize: 20),
      ),
    ),
  );
}
