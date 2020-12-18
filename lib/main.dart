import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Tourism/tw.dart';
import 'Tourism/th.dart';
import 'Tourism/ch.dart';
import 'Tourism/pp.dart';
import 'Study/sw.dart';
import 'Study/sh.dart';
import 'Over/ow.dart';
import 'Over/oh.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'ArefRuqaa',
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
          '/tw': (context) => TW(),
          '/th' : (context) =>THome(),
          '/ch': (context)=>CH(),
          '/pp' : (context)=>PP(),
          '/sw' : (context)=>SW(),
          '/sh':(context)=>SHome(),
          '/ow':(context)=>OW(),
          '/oh':(context)=>OHome(),


        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return SafeArea(
      child: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new AssetImage("images/a.png"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox.expand(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'أكتشف استراليا',
                      textDirection: TextDirection.rtl,
                      style:
                          TextStyle(fontSize: width / 7, color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: width,
                      height: height / 5,
                      decoration: BoxDecoration(
                          color: Color(0xFBFAF5).withOpacity(0.3),
                          borderRadius:
                              BorderRadius.all(Radius.circular(37.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MH(
                                  image: 'images/st.jpg',
                                  text: 'الدراسة',
                                  s: width,
                                  c: () {
                                    Navigator.pushNamed(context, '/sw');
                                  },
                                ),
                                MH(
                                  image: 'images/4.png',
                                  text: 'عين على استراليا',
                                  s: width,
                                  c: () {
                                    Navigator.pushNamed(context, '/ow');
                                  },
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MH(
                                  image: 'images/1.png',
                                  text: 'السياحة',
                                  s: width,
                                  c: () {
                                    Navigator.pushNamed(context, '/tw');
                                  },
                                ),
                                // MH(
                                //   image: 'images/3.png',
                                //   text: 'العمل والهجرة',
                                //   s: width,
                                //   c: () {},
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class MH extends StatelessWidget {
  MH(
      {@required this.image,
      @required this.text,
      @required this.s,
      @required this.c});
  final String image;
  final String text;
  final double s;
  final Function c;
  @override
  Widget build(BuildContext context) {
    double d = s / 18;
    return GestureDetector(
      onTap: c,
      child: Container(
        child: Row(
          children: [
            Text(text, style: TextStyle(color: Colors.white, fontSize: d)),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: d+5,
            ),
          ],
        ),
      ),
    );
  }
}
