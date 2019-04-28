import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_stop/ui/LetterFrameWidget.dart';
import 'package:flutter_stop/ui/LetterListWidget3.dart';

class StopWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    StopState st=new StopState();
    st.reset();
    return st;
  }

}
class StopState extends State{

  List<String> _lettersList=new List();
  List<String> _fulllettersList=generateLetterList();
  Random _rnd=new Random();

  String _actualLetter="";
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black54,
        title: new Center(child: new Text("Stop!",textDirection: TextDirection.ltr,)),
      ),
      body: new Column(


        children: [
          new Expanded(child: LetterListWidget(_fulllettersList,_lettersList,Colors.white,Colors.blueGrey),flex: 6,),
          new Expanded(child: new GestureDetector(child: LetterFrameWidget(_actualLetter),onTap:() {
            setState(() {
              _actualLetter=pick();
            });
            // Perform some action
          } ,),flex: 5,),
          new Center(child:new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new RaisedButton(
                child: const Text('reset'),
                //color: Colors.black45,
                //elevation: 4.0,
                onPressed: () {
                  setState(() {
                    reset();
                    _actualLetter="";
                  });
                  // Perform some action
                },
              )
            ],
          ))
          ,

        ],

      ),
      backgroundColor: Colors.cyan,
    );
  }

  void reset(){
    _lettersList=generateLetterList();
  }

  static List<String> generateLetterList(){
    List<String> result=new List();
    int c = "A".codeUnitAt(0);
    int end = "Z".codeUnitAt(0);
    while (c <= end) {
      result.add(String.fromCharCode(c));

    }
    return result;
  }
  String pick(){

    int max = _lettersList.length;
    if(max==1){
      return _lettersList[0];
    }
    int r =  _rnd.nextInt(max);
    var result= _lettersList[r];

      _lettersList.removeAt(r);
    return result;
  }


}