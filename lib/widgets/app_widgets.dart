import 'package:flutter/material.dart';

Widget textFeild(
    TextEditingController textEditingController, String lable, bool obscureText,
    {var maxlines = 1}) {
  return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        maxLength: 10,
        maxLines: maxlines,
        obscureText: obscureText,
        textCapitalization: TextCapitalization.characters,
        onChanged: (value) {
          textEditingController.value = TextEditingValue(
              text: value.toUpperCase(),
              selection: textEditingController.selection);
        },
        style: const TextStyle(
            color: Color.fromARGB(255, 175, 201, 84),
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
