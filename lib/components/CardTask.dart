import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String title;
  final IconData icon;

  TaskCard({required this.title, required this.icon});

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(widget.icon, color: Colors.yellow),
                ),
                title: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
