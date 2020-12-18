import 'package:flutter/material.dart';

class TW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TWelcome(),
    );
  }
}

class TWelcome extends StatefulWidget {
  @override
  _TWelcomeState createState() => _TWelcomeState();
}

class _TWelcomeState extends State<TWelcome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    return SafeArea(
      child: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/1.png"),
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
                        'استعد عزيزي المسافر .. فأنت على وشك الانطلاق في رحلة تعد من الاجمل من عمرك',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: width / 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'ستجد في هذه الدولة الجميلة ما يدهشك و يلذذ حواسك .. ففي هذه الدولة مختلف الوجهات و المناظر ',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: width / 21, color: Colors.white),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/th');
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
