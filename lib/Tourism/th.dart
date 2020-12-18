import 'package:flutter/material.dart';
import 'package:australia/uti.dart';

class THome extends StatefulWidget {
  @override
  _THomeState createState() => _THomeState();
}

class _THomeState extends State<THome> {
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
                      'مرحبا بك في أجمل رحلة في حياتك',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 15),
                    ),
                    Text(
                      'ثق بي .. ستجد ما تحب في استراليا ! ',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'البلدان',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    SCat(lc: '1',r: '/ch',),
                    Text(
                      'المناطق المفضلة للسياح في أستراليا',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    LCat(
                      lc: '12',
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
