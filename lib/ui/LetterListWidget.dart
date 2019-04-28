import 'package:flutter/material.dart';

class LetterListWidget extends StatelessWidget{
  List<String> value;
  LetterListWidget(value){
    this.value=value;
  }
  @override
  Widget build(BuildContext context) {
    var fstr="";
    for(var st in value){
      fstr+=st;
    }
    return new Container(
        decoration: myBoxDecoration(),
        child: new Center(child:new Text(fstr,textDirection: TextDirection.ltr,style: new TextStyle(
          fontSize: 40,fontWeight: FontWeight.w600, fontStyle:FontStyle.italic ,color: Colors.black87,


        ),),

        ));
  }

}


BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
        width: 3.0
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(5.0) //                 <--- border radius here
    ),
  );
}