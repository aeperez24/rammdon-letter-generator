import 'package:flutter/material.dart';

class LetterListWidget extends StatelessWidget{
  List<String> value;
  LetterListWidget(List<String> value){
    this.value=value;
  }
  @override
  Widget build(BuildContext context) {
    return new Wrap(
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 5,
      runSpacing: 5,
      children:value.map((val)=>framedLetter(val)).toList(),
    );

  }

}
Container framedLetter(String data){
  return new Container(
    decoration: myBoxDecoration(),width: 40,height: 50,
    child: new Center(child:new Text(data,style: new TextStyle(
        fontSize: 40,fontWeight: FontWeight.w600, fontStyle:FontStyle.italic ,color: Colors.black45,
        ),)

  )
  );}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
        width: 3.0,

      color: Colors.white
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(10.0) //                 <--- border radius here
    ),
  );
}