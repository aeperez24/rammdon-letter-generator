import 'package:flutter/material.dart';

class LetterFrameWidget extends StatelessWidget{
    String value;
    LetterFrameWidget(value){
      this.value=value;
    }
  @override
  Widget build(BuildContext context) {

    return new Container(
      child:new Center(child:new Text(value,textDirection: TextDirection.ltr,style: new TextStyle(
        fontSize: 80,fontWeight: FontWeight.w600, fontStyle:FontStyle.italic ,color: Colors.black,
      ))

    ),width: 200,decoration: BoxDecoration(
      border: Border.all(
          width: 3.0
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(50.0) //                 <--- border radius here
      ),color: Colors.white
    ));
  }

}