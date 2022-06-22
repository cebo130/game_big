import 'dart:core';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_big/mybutton.dart';
import 'package:game_big/page2.dart';
import 'package:flutter_toastr/flutter_toastr.dart';
void main() {
  runApp(const Hey());
}
class Hey extends StatefulWidget {
  const Hey({Key? key}) : super(key: key);

  @override
  State<Hey> createState() => _HeyState();
}

class _HeyState extends State<Hey> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int grow = 0;
  String user = "";
  bool once=true;
  bool resCo = false;
  bool touchedA = false;
  bool  touchedB= false;
  bool touchedC= false;
  bool touchedD= false;
  bool touchedE= false;
  bool touchedF= false;
  bool touchedG= false;
  bool touchedH= false;
  bool touchedI = false;
  String extAnswers = "";

  void increase(){
    setState(() {
      grow++;
    });
  }
/*start here*/

  void funB(){
    int rand ;
    String butA,butB,butC,butD,butE,butF,butG,butH,butI,answers = "";
    String a = "";
    String? aa,aaa ;
    int b;
    String ba,letters = "";
    for (var i = 1; i < 10; i++) {
      rand = 1 + Random().nextInt(10 - 1);
      ba = rand.toString();
      a = a + ba;
      Map<int, String?> fruits = Map();
      fruits[1] = "A";
      fruits[2] = "B";
      fruits[3] = "C";
      fruits[4] = "D";
      fruits[5] = "E";
      fruits[6] = "F";
      fruits[7] = "G";
      fruits[8] = "H";
      fruits[9] = "I";
      aa = fruits[rand];
      if(aa!=null){
        letters = letters+aa;
      }
      // aa = aa + fruits[rand];

    }


    butA=letters[0];
    butB=letters[1];
    butC=letters[2];
    butD=letters[3];
    butE=letters[4];
    butF=letters[5];
    butG=letters[6];
    butH=letters[7];
    butI=letters[8];
    for(var j =1; j<5; j++){
      answers=answers+letters[j];
    }
    print("all numbers : $a");
    print("all letters : $letters");
    extAnswers = answers;
    print("answers : $answers");
    //print("you answered : $user");
    showToast();

    print("--------------------------------------------------------------------");
    //return answers;
  }
/*end here */
  Color baqCo = Colors.white;
  Color txtCo = Colors.grey;
  Color txtCo2 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baqCo,
      appBar: AppBar(
        backgroundColor: baqCo,
        title: Text('Stage 1',style: TextStyle(color: txtCo),),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color:once ? Colors.green : Colors.white60,
                child: Text(once ? "Start" : "Started", style: TextStyle(color: once ? Colors.white : Colors.grey),),
                onPressed: once ? () {
                  setState(() {
                    if(once==true){
                      //showToast();
                      //start();
                      funB();
                    }
                    once = false;
                  });
                } : (){},
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SizedBox(width: 150,),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      child:Text('A',style: TextStyle(color: baqCo),),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white60, width: 2),
                      ),
                      color: touchedA ? Colors.yellow : Colors.grey,
                      onPressed: (){
                        increase();
                        setState(() {
                          user = user+"A";
                          touchedA = true;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      color: touchedB ? Colors.yellow : Colors.grey,
                      child:Text('B',style: TextStyle(color: baqCo)),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white60, width: 2),
                      ),
                      onPressed: (){
                        setState(() {
                          user = user+"B";
                          touchedB = true;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      color: touchedC ? Colors.yellow : Colors.grey,
                      child:Text('C',style: TextStyle(color: baqCo),),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white60, width: 2),
                      ),
                      onPressed: (){
                        setState(() {
                          user = user+"C";
                          touchedC=true;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SizedBox(width: 150,),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      color: touchedD ? Colors.yellow : Colors.grey,
                      child:Text('D',style: TextStyle(color: baqCo),),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white60, width: 2),
                      ),
                      onPressed: (){
                        setState(() {
                          user = user+"D";
                          touchedD=true;
                        });
                        increase();
                      },
                    ),
                  ),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      color: touchedE ? Colors.yellow : Colors.grey,
                      child:Text('E',style: TextStyle(color: baqCo),),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white60, width: 2),
                      ),
                      onPressed: (){
                        setState(() {
                          user = user+"E";
                          touchedE=true;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      color: touchedF ? Colors.yellow : Colors.grey,
                      child:Text('F',style: TextStyle(color: baqCo),),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white60, width: 2),
                      ),
                      onPressed: (){
                        setState(() {
                          user = user+"F";
                          touchedF=true;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SizedBox(width: 150,),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      color: touchedG ? Colors.yellow : Colors.grey,
                      child:Text('G',style: TextStyle(color: baqCo),),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white60, width: 2),
                      ),
                      onPressed: (){
                        setState(() {
                          user = user+"G";
                          touchedG=true;
                        });
                        increase();
                      },
                    ),
                  ),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      color: touchedH ? Colors.yellow : Colors.grey,
                      child:Text('H',style: TextStyle(color: baqCo),),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white60, width: 2),
                      ),
                      onPressed: (){
                        setState(() {
                          user = user+"H";
                          touchedH=true;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 62,
                    height: 62,
                    child: RaisedButton(
                      color: touchedI ? Colors.yellow : Colors.grey,
                      child:Text('I',style: TextStyle(color: baqCo),),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white60, width: 2),
                        ),
                      onPressed: (){
                        setState(() {
                          user = user+"I";
                          touchedI=true;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              showIt(context),
              SizedBox(height: 20,),
              Container(
                child: RaisedButton(
                  color: resCo ? Colors.green: Colors.red,
                  child: resCo ? Text('Next',style: TextStyle(color: Colors.white),) :
                  Text('Restart',style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    setState(() {
                      //funB();
                      user = '';
                      touchedA = false;
                      touchedB= false;
                      touchedC= false;
                      touchedD= false;
                      touchedE= false;
                      touchedF= false;
                      touchedG= false;
                      touchedH= false;
                      touchedI = false;
                      once = true;
                      //Simple to use, no global configuration
                      //showToast("hello styled toast",context:context);
                      /*FlutterToastr.show(
                          "AEIH",
                          context,
                          duration: FlutterToastr.lengthShort,
                          position:  FlutterToastr.top
                      );*/
                      if(resCo==true){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (_) => Stage2()));
                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void showToast() => Fluttertoast.showToast(
    msg: extAnswers,
    fontSize: 20,
    backgroundColor: Colors.white,
    textColor: Colors.green,
  );
  Widget showIt(BuildContext context){
    //funB();
    if(user.length==4 && user==extAnswers){
      setState(() {
        resCo = true;
      });
      return Text(
          'correct',
        style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),
      );
    }else if(user.length==4 && user!=extAnswers){
      setState(() {
        resCo = false;
      });
      return Text(
        'Wrong',
        style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
      );
    }
    return Text('');
  }

}

