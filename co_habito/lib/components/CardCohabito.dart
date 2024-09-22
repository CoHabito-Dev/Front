import 'package:flutter/material.dart';

class CardCohabito extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  CardCohabito({required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362,
      height: 100,
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(icon, color: Colors.white),
              ),
              title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(subtitle),
              trailing: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 9, 41, 68),
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

