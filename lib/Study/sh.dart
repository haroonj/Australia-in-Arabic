import 'package:flutter/material.dart';
import 'package:australia/uti.dart';

class SHome extends StatefulWidget {
  @override
  _SHomeState createState() => _SHomeState();
}

class _SHomeState extends State<SHome> {
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
                      'استراليا في المرتبة التاسعة عالميا في التعليم ',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 15),
                    ),
                    Text(
                      'حيث ينار بالعلم الظلام..',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'خمسة أسباب للدراسة في استراليا',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    SCat(
                      lc: '2',
                      r: '/pp',
                    ),
                    Text(
                      'اليك أفضل الجامعات في استراليا',
                      textDirection: TextDirection.rtl,
                      style:
                      TextStyle(color: Colors.black, fontSize: width / 20),
                    ),
                    LCat(
                      lc: '2',
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
