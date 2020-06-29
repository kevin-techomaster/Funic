import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(MaterialApp(
    home: CountriesData(),
  ));
}

// ignore: must_be_immutable
class CountriesData extends StatefulWidget {
  String countryName;
  String backgroundImage;
  CountriesData({this.countryName, this.backgroundImage});
  @override
  _CountriesDataState createState() => _CountriesDataState();
}

class _CountriesDataState extends State<CountriesData> {
  String data = '';
  fatchFile() async {
    String responceText;
    responceText = await rootBundle
        .loadString('Data/Countries/${widget.countryName.toUpperCase()}.txt');
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
                image: DecorationImage(
              image: AssetImage(
                  "./assets/img/flags/${widget.backgroundImage}.jpg"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(255, 255, 225, 0.5), BlendMode.modulate),
            )),
            child: Text(
              data,
              style: TextStyle(fontSize: 28),
            ),
          ),
        ],
      ),
    );
  }
}
