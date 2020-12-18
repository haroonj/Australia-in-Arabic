import 'package:australia/uti.dart';
import 'package:flutter/material.dart';

class CH extends StatefulWidget {
  @override
  _CHState createState() => _CHState();
}

class _CHState extends State<CH> {
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: SizedBox.expand(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      constraints: BoxConstraints.expand(height: height / 3.5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                        child: Image.network(
                          args['img'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            args['title'],
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black, fontSize: width / 16),
                          ),
                          SizedBox(
                            height: width / 40,
                          ),
                          Container(
                            height: height / 4.25,
                            child: SingleChildScrollView(
                              child: Text(args['body'],
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.black, fontSize: width / 26),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 8,
                  right: 0,
                  left: 0,
                  child: LCat(
                    lc: args['id'] ,
                    r: '/pp',
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
        ));
  }
}
