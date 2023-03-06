import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({
    super.key,
  });

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateInput,
      readOnly: true,
      decoration: const InputDecoration(
        hintText: "Enter date",
        contentPadding: EdgeInsets.all(8),
        constraints: BoxConstraints(maxHeight: 44),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusColor: Colors.grey,
        suffixIcon: Icon(
          Icons.calendar_month,
          color: Colors.grey,
        ),
        isDense: true,
        border: OutlineInputBorder(),
      ),
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2100));

        if (pickedDate != null) {
          print(pickedDate);
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          print(formattedDate);
          setState(() {
            dateInput.text = formattedDate;
          });
        }
      },
    );
  }
}
