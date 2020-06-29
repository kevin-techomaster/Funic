import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(MaterialApp(
    home: CoronaDetails(),
  ));
}

// ignore: must_be_immutable
class CoronaDetails extends StatefulWidget {
  String name;
  String image;
  Color color1;
  Color color2;
  CoronaDetails({this.name, this.image, this.color1, this.color2});

  @override
  _CoronaDetailsState createState() => _CoronaDetailsState();
}

class _CoronaDetailsState extends State<CoronaDetails> {
  String data = '';
  fatchFile() async {
    String responceText;
    responceText = await rootBundle.loadString('./Data/${widget.name}.txt');
    setState(() {
      data = responceText;
    });
  }

  @override
  void initState() {
    fatchFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [widget.color1, widget.color2]),
            ),
            child: Column(
              children: [
                Text(
                  data,
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
