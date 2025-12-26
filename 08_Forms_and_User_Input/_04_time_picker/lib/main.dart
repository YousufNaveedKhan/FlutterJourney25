import 'package:flutter/material.dart';

void main() => runApp(TimePickerExample());

class TimePickerExample extends StatefulWidget {
  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Time Picker Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(selectedTime == null
                  ? "No time chosen"
                  : "Selected: ${selectedTime!.format(context)}"),
              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? picked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (picked != null && picked != selectedTime) {
                    setState(() {
                      selectedTime = picked;
                    });
                  }
                },
                child: Text("Pick Time"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
