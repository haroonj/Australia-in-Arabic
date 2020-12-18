import 'package:flutter/material.dart';
import 'package:australia/uti.dart';

class OHome extends StatefulWidget {
  @override
  _OHomeState createState() => _OHomeState();
}

class _OHomeState extends State<OHome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Stack(
          children: [
            SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20, 8, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'استراليا التاريخ و العراقة ',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 15),
                    ),
                    Text(
                      'نبذة لا تكاد تعطيها حقها ',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'معلومات عامة',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    SCat(
                      lc: '3',
                      r: '/pp',
                    ),
                    Text(
                      'الرياضة في استراليا',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    LCat(
                      lc: '3',
                      r: '/pp',
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: width / 16,
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
