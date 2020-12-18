import 'package:flutter/material.dart';

class OW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OWelcome(),
    );
  }
}

class OWelcome extends StatefulWidget {
  @override
  _OWelcomeState createState() => _OWelcomeState();
}

class _OWelcomeState extends State<OWelcome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return SafeArea(
      child: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new NetworkImage(
                'https://wallpaperaccess.com/full/1468956.jpg',
              ),
              fit: BoxFit.cover,
            )),
        child: Stack(
          children: [
            SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                       'نظرة عامة .. -الغوص في استراليا-',

                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: width / 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/oh');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF5E6472),
                            borderRadius:
                            BorderRadius.all(Radius.circular(37.0))),
                        child: Center(
                          child: Text(
                            'هيا بنا! ',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: width / 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: width / 16,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
