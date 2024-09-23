import 'dart:async';
import 'package:flutter/material.dart';
import 'package:juz_amma/page/constant.dart';
import 'package:juz_amma/page/page_list_surah.dart' as users;

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    Timer(duration, () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => users.PageListSurah()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.bg1, Palette.bg2],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/indonesia.png',
                height: 450,
                width: 500,
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                  return Text('Error loading image: $exception');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
