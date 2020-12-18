import 'package:flutter/material.dart';

class PP extends StatefulWidget {
  @override
  _PPState createState() => _PPState();
}

class _PPState extends State<PP> {
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
                      constraints: BoxConstraints.expand(height: height / 2.25),
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
                            height: height / 25,
                          ),
                          Container(
                            height: height / 2.7,
                            child: SingleChildScrollView(
                              child: Text(
                                args['body'],
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.black, fontSize: width / 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Positioned(
                //   bottom: 8,
                //   right: 0,
                //   left: 0,
                //   child: GestureDetector(
                //     onTap: () {
                //       print('pp');
                //     },
                //     child: Padding(
                //       padding: const EdgeInsets.only(left:100.0,right: 100.0),
                //       child: Container(
                //         height: height / 20,
                //         decoration: BoxDecoration(
                //           boxShadow: [
                //             BoxShadow(
                //               color: Colors.grey.withOpacity(0.5),
                //               spreadRadius: 5,
                //               blurRadius: 7,
                //               offset: Offset(0, 3), // changes position of shadow
                //             ),
                //           ],
                //           color: Color(0xFF5E6472),
                //           borderRadius: BorderRadius.all(
                //             Radius.circular(37.0),
                //           ),
                //         ),
                //         child: Center(
                //           child: Text(
                //             'الموقع الرسمي',
                //             textDirection: TextDirection.rtl,
                //             style: TextStyle(
                //                 fontSize: width / 18,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.white),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
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
        ));
  }
}