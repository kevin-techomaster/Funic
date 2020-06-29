import 'package:flutter/material.dart';
import 'package:funic/details/home_page.dart';

import 'constants.dart';
import 'covid1.dart';
import 'dataPickupFromTxt.dart';
import 'impacts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 350,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("./assets/img/banner-covid.jpg"),
                            fit: BoxFit.cover,
                            alignment: Alignment(0, 0),
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: kBoxShadow1,
                              offset: Offset(-5, -5),
                              blurRadius: 11,
                            ),
                            BoxShadow(
                              color: kBoxShadow2,
                              offset: Offset(5, 5),
                              blurRadius: 11,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                symptoms(
                                    image: "./assets/img/gif/symp1.gif",
                                    name: "light cough"),
                                symptoms(
                                    image: "./assets/img/gif/symp2.gif",
                                    name: "light fever"),
                                symptoms(
                                    image: "./assets/img/gif/symp3.gif",
                                    name: "light tiredness"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Corona",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          HorizontalScrollingBoxes(
                            fullImage: "whatIsCorona",
                            name: "whatIsCorona",
                            color1: Color(0xff7488e8),
                            color2: Color(0xff5a62de),
                            image: "./assets/img/container1.png",
                            text: "",
                          ),
                          HorizontalScrollingBoxes(
                            fullImage: "prevention",
                            name: "preventions",
                            color1: Color(0xfffa7f82),
                            color2: Color(0xfffead96),
                            image: "./assets/img/container2.png",
                            text: "",
                            textstyle:
                                TextStyle(fontSize: 33, color: Colors.white),
                          ),
                          HorizontalScrollingBoxes(
                            fullImage: "life",
                            name: "positiveTrueStories",
                            color1: Color(0xfffc8faf),
                            color2: Color(0xffff558a),
                            image: "./assets/img/container3.png",
                            text: "",
                          ),
                          HorizontalScrollingBoxes(
                            fullImage: "symptoms",
                            name: "symptoms",
                            color1: Color(0xfffa8385),
                            color2: Color(0xfffdad94),
                            image: "./assets/img/container4.png",
                            text: "",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Impact of corona",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/56/e5/be/56e5becd1b2e222771b78cf7a7fe7fe8.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Color.fromRGBO(255, 255, 225, 0.5),
                                BlendMode.modulate)),
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          HorizontalScrollingCountriesSection(
                            countryName: "America",
                            image: "./assets/img/flags/America.jpg",
                            text:
                                '''The ongoing COVID-19 pandemic was confirmed to have reached the United States in January 2020. The first confirmed case of local transmission was ... ''',
                            heading: "America",
                          ),
                          HorizontalScrollingCountriesSection(
                            countryName: "Brazil",
                            image: "./assets/img/flags/Brazil.jpg",
                            text:
                                '''The COVID-19 pandemic in Brazil is part of the ongoing pandemic of coronavirus disease 2019 (COVID-19) caused by severe acute respiratory syndrome .... ''',
                            heading: "Brazil",
                          ),
                          HorizontalScrollingCountriesSection(
                            countryName: "canada",
                            image: "./assets/img/flags/canada.jpg",
                            text:
                                '''The COVID-19 pandemic in Canada is part of the ongoing worldwide pandemic of coronavirus disease 2019 (COVID-19) caused by severe acute respiratory syndrome ... ''',
                            heading: "Canada",
                          ),
                          HorizontalScrollingCountriesSection(
                            countryName: "china",
                            image: "./assets/img/flags/china.jpg",
                            text:
                                '''The COVID-19 pandemic originated with a cluster of mysterious, suspected pneumonia cases in the city of Wuhan, the capital of Hubei, China. A Wuhan hospital... ''',
                            heading: "China",
                          ),
                          HorizontalScrollingCountriesSection(
                            countryName: "india",
                            image: "./assets/img/flags/india.jpg",
                            text:
                                '''The COVID-19 pandemic in India is part of the worldwide pandemic of coronavirus disease 2019 (COVID-19) caused by severe acute respiratory syndrome... ''',
                            heading: "India",
                          ),
                          HorizontalScrollingCountriesSection(
                            countryName: "russia",
                            image: "./assets/img/flags/russia.jpg",
                            text:
                                '''The COVID-19 pandemic in Russia is part of the ongoing pandemic of coronavirus disease 2019 (COVID-19) caused by severe acute respiratory syndrome... ''',
                            heading: "Russia",
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30.0,
                            bottom: 20,
                          ),
                          child: Column(
                            children: [],
                          ),
                        ),
                        Container(
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: kBoxShadow1,
                              offset: Offset(5, 5),
                              blurRadius: 11,
                            ),
                            BoxShadow(
                              color: Colors.lightBlue[200],
                              offset: Offset(-5, -5),
                              blurRadius: 20,
                            ),
                          ]),
                          child: BothImpacts(
                            imageName: "positiveImpact1",
                            name: "positiveImpact-img",
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                      "./assets/img/verticalChain-img.png"),
                                ),
                                Image(
                                  image: AssetImage(
                                      "./assets/img/verticalChain-img.png"),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                      "./assets/img/verticalChain-img.png"),
                                ),
                                Image(
                                  image: AssetImage(
                                      "./assets/img/verticalChain-img.png"),
                                ),
                              ],
                            ),
                          ],
                        ),
                        NegativeImpact(
                          name: "negativeImpact-img",
                          imageName: "negativeImpact1",
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget symptoms({@required String image, String name}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          height: 50,
          child: Image(
            image: AssetImage(image),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    ],
  );
}

// ignore: must_be_immutable
class HorizontalScrollingBoxes extends StatefulWidget {
  Color color1;
  Color color2;
  String text;
  TextStyle textstyle;
  String image;
  String name;
  String fullImage;
  HorizontalScrollingBoxes(
      {this.color1,
      this.color2,
      this.text,
      this.textstyle,
      this.image,
      this.fullImage,
      this.name});
  @override
  _HorizontalScrollingBoxesState createState() =>
      _HorizontalScrollingBoxesState();
}

class _HorizontalScrollingBoxesState extends State<HorizontalScrollingBoxes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Container(
          height: 200,
          width: 125,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(80),
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              gradient: LinearGradient(colors: [widget.color1, widget.color2]),
              boxShadow: [
                BoxShadow(
                  color: kBoxShadow1,
                  offset: Offset(5, 5),
                  blurRadius: 11,
                ),
                BoxShadow(
                  color: kBoxShadow2,
                  offset: Offset(-5, -5),
                  blurRadius: 11,
                ),
              ]),
          child: Center(
            child: Text(
              widget.text,
              style: widget.textstyle == null
                  ? TextStyle(fontSize: 40)
                  : widget.textstyle,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class HorizontalScrollingCountriesSection extends StatefulWidget {
  String image;
  String heading = "";
  String text;
  String countryName;
  HorizontalScrollingCountriesSection({
    this.image,
    this.heading,
    this.text,
    this.countryName,
  });
  @override
  _HorizontalScrollingCountriesSectionState createState() =>
      _HorizontalScrollingCountriesSectionState();
}

class _HorizontalScrollingCountriesSectionState
    extends State<HorizontalScrollingCountriesSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        color: Colors.transparent,
        height: 250,
        width: 250,
        child: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CountriesData(
                    countryName: widget.countryName,
                    backgroundImage: widget.countryName,
                  ),
                ),
              );
            });
          },
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fill,
                ),
                Center(
                  child: Text(
                    widget.heading,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class BothImpacts extends StatefulWidget {
  String imageName;
  String name;
  BothImpacts({this.imageName, this.name});
  @override
  _BothImpactsState createState() => _BothImpactsState();
}

class _BothImpactsState extends State<BothImpacts> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Impacts(
                        fileName: "positiveImpact",
                        name: widget.imageName,
                      )));
        });
      },
      child: Container(
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/${widget.name}.png"),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NegativeImpact extends StatefulWidget {
  String imageName;
  String name;
  NegativeImpact({this.imageName, this.name});
  @override
  _NegativeImpactState createState() => _NegativeImpactState();
}

class _NegativeImpactState extends State<NegativeImpact> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Impacts(
                        fileName: "negativeImpact",
                        name: widget.imageName,
                      )));
        });
      },
      child: Container(
        height: 300,
        width: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/${widget.name}.png"),
                fit: BoxFit.fill),
            boxShadow: [
              BoxShadow(
                color: kBoxShadow1,
                offset: Offset(5, 5),
                blurRadius: 11,
              ),
              BoxShadow(
                color: Colors.lightBlue[200],
                offset: Offset(-5, -5),
                blurRadius: 20,
              ),
            ]),
      ),
    );
  }
}
