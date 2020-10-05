import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool themeSwitch = false;

  dynamic themeColors() {
    if (themeSwitch) {
      return Colors.black;
    } else
      return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: themeColors(),
          elevation: 0,
          brightness: themeSwitch ? Brightness.dark : Brightness.light,
          leading: IconButton(
              onPressed: () {
                setState(() {
                  themeSwitch = !themeSwitch;
                });
              },
              icon: themeSwitch
                  ? Icon(
                      Icons.brightness_3,
                      color: themeSwitch ? Colors.greenAccent : Colors.black,
                    )
                  : Icon(
                      Icons.wb_sunny,
                      color: themeSwitch ? Colors.greenAccent : Colors.black,
                    )),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                ),
                color: themeSwitch ? Colors.greenAccent : Colors.black,
                onPressed: () {})
          ],
        ),
        body: SafeArea(
          child: Container(
            color: themeColors(),
            child: ListView(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: themeColors(),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TechFrill",
                        style: TextStyle(
                          color: themeSwitch
                              ? Colors.greenAccent
                              : Colors.grey[850],
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Find it, love it, buy it",
                        style: TextStyle(
                            color:
                                themeSwitch ? Colors.greenAccent : Colors.black,
                            fontSize: 40),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: "Search your product",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: themeSwitch
                                ? Colors.greenAccent
                                : Colors.grey[850],
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            imageCard("1", "Cameras"),
                            imageCard("2", "Mobiles"),
                            imageCard("3", "Laptops"),
                            imageCard("4", "Headphones"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/image5.jpg")),
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Dream Gadgets",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget imageCard(image, title) {
  return AspectRatio(
    aspectRatio: 2 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/image$image.jpg",
            )),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
