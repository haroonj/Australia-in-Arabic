import 'package:flutter/material.dart';

class SW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SWelcome(),
    );
  }
}

class SWelcome extends StatefulWidget {
  @override
  _SWelcomeState createState() => _SWelcomeState();
}

class _SWelcomeState extends State<SWelcome> {
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
                'https://aramme.com/thumb/w920/uploads/images/2020/07/W5N5r.jpeg',
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
                        'استراليا تلك الدولة التي تقع في اقصى النصف الجنوبي من الكرة الأرضية ، الدولة التي أخرجت قامات من العلم والعلماء اللذين غيروا وجه العالم الذي نراه ! ، منهل علم ودولة مليئة بالأصرح العلمية التي يتوافد عليها الطلاب من كل مكان للحصول على درجة علمية وثيقة ل يبنوا بها حياتهم! ',

                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: width / 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sh');
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
