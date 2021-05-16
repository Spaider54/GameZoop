import 'package:flutter/material.dart';

class Gamei extends StatefulWidget {
  @override
  _GameiState createState() => _GameiState();
}

class _GameiState extends State<Gamei> {
  double sizeofText = 10.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GameZoom',
      home: Scaffold(
        backgroundColor: Colors.orange[200],
        appBar: AppBar(
          title: Text('GameZoom'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Column(children: [
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.deepPurple,
                onPressed: () {
                  setState(() {
                    sizeofText = sizeofText + 1;
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20.0, color: Colors.amber),
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Text("$sizeofText"),
              SizedBox(
                width: 30.0,
              ),
              RaisedButton(
                color: Colors.deepPurple,
                onPressed: () {
                  setState(() {
                    sizeofText = sizeofText - 1;
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20.0, color: Colors.amber),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Zome this Message", style: TextStyle(fontSize: sizeofText)),
        ]),
      ),
    );
  }
}
