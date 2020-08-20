import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  Future<bool> _splash() async {
    await Future.delayed(Duration(milliseconds: 5000), () {}); //Delay for 5Secs
    return true;
  }

  @override
  void initState() {
    super.initState();
    _splash().then((status) {
      if (status) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => NextScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: <Widget>[
        Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/6.png"), //Background image path
            fit: BoxFit.cover,
          ),
        )),
        Shimmer.fromColors(
          baseColor: Colors.blueGrey,
          highlightColor: Colors.greenAccent,
          child: Container(
            margin: EdgeInsets.only(top: 220),
            child: Column(
              children: <Widget>[
                Text(
                  'Bynalab',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Bebas Neue Regular',
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '(You\'re Welcome)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
