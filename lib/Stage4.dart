import 'package:flutter/material.dart';
import 'package:game_big/main.dart';

class Stage4 extends StatefulWidget {
  const Stage4({Key? key}) : super(key: key);

  @override
  State<Stage4> createState() => _Stage4State();
}

class _Stage4State extends State<Stage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Thank you for playing, app is still under construction.more stages and features coming soon.",
              style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              child: Text("Replay"),
              onPressed: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => MyApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
