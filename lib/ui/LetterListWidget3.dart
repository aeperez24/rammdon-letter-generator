import 'package:flutter/material.dart';

class LetterListWidget extends StatelessWidget{
  List<String> value;
  List<String> valueActives;
  Color abledColor;
  Color disabledColor;
  LetterListWidget(List<String> value,List<String> valueActives,Color abledColor,Color disabledColor){
    this.value=value;
    this.valueActives=valueActives;
    this.abledColor=abledColor;
    this.disabledColor=disabledColor;
  }
  @override
  Widget build(BuildContext context) {

    return new Wrap(
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 5,
      runSpacing: 5,
      children:value.map((val)=>framedLetter(val,valueActives.contains(val)?abledColor:disabledColor)).toList(),
    );

  }

}
Container framedLetter(String data,Color colorIn){
  return new Container(
    decoration: myBoxDecoration(colorIn),width: 40,height: 50,
    child: new Center(child:new Text(data,style: new TextStyle(
        fontSize: 40,fontWeight: FontWeight.w600, fontStyle:FontStyle.italic ,color: colorIn,
        ),)

  )
  );}

BoxDecoration myBoxDecoration(Color color) {
  return BoxDecoration(
    border: Border.all(
        width: 3.0,

      color: color
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(10.0) //                 <--- border radius here
    ),
  );
}