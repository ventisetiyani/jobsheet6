import 'package:flutter/material.dart';

void main() {
  runApp(TeksUtama());
}

class TeksUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teks Utama',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Teks Utama'),
        ),
        body: NameList(),
      ),
    );
  }
}

class NameList extends StatefulWidget {
  @override
  _NameListState createState() => _NameListState();
}

class _NameListState extends State<NameList> {
  Color ventiTextColor = Colors.green;

  void changeColor() {
    setState(() {
      ventiTextColor = ventiTextColor == Colors.green ? Colors.blue : Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: changeColor,
            child: NameCard(
              name: 'Venti Setiyani',
              id: 'STI202102442',
              textColor: ventiTextColor,
            ),
          ),
          NameCard(
            name: 'Riyana',
            id: 'STI202102468',
            textColor: Colors.black,
          ),
          NameCard(
            name: 'Riki Nur Alim',
            id: 'STI202102440',
            textColor: Colors.black,
          ),
          NameCard(
            name: 'Apik Maulidah Purnaningsih',
            id: 'STI202102475',
            textColor: Colors.black,
          ),
          NameCard(
            name: 'Tria Wahyu Apriyanti',
            id: 'STI202102438',
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class NameCard extends StatelessWidget {
  final String name;
  final String id;
  final Color textColor;

  NameCard({required this.name, required this.id, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontSize: 24, color: textColor)),
          Text(id, style: TextStyle(fontSize: 16, color: textColor)),
        ],
      ),
    );
  }
}
