import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class Impacts extends StatefulWidget {
  String name;
  String fileName;
  Impacts({this.name, this.fileName});
  @override
  _ImpactsState createState() => _ImpactsState();
}

class _ImpactsState extends State<Impacts> {
  String data = '';
  fatchFile() async {
    String responceText;
    responceText = await rootBundle.loadString('Data/${widget.fileName}.txt');
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: 385,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/img/${widget.name}.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                data,
                style: TextStyle(fontSize: 28),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
