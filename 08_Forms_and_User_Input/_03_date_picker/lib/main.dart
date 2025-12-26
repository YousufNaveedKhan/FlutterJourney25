import 'package:flutter/material.dart';

void main() => runApp(DatePickerExample());

class DatePickerExample extends StatefulWidget {
  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Date Picker Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(selectedDate == null
                  ? "No date chosen"
                  : "Selected: ${selectedDate!.toLocal()}".split(' ')[0]),
              ElevatedButton(
                onPressed: () async {
                  DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (picked != null && picked != selectedDate) {
                    setState(() {
                      selectedDate = picked;
                    });
                  }
                },
                child: Text("Pick Date"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
