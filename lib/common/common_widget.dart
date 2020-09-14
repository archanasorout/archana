import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:sam_work/utils/theme.dart';


customTextField({@required String hint, TextEditingController controller,
  Function onTextChanged, EdgeInsets margin,TextStyle style ,bool scureText })
{
return  Container(
  margin:margin,
  child:   TextField(

    controller: controller,

      onChanged: (String value) {

        onTextChanged(value);

      },

    decoration: InputDecoration(

      hintStyle:style==null? TextStyle(color: colorBlack, fontSize: 16):

      style,

      hintText: hint,

      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

      border: OutlineInputBorder(

        borderRadius: BorderRadius.all(Radius.circular(3.0)),

      ),

      enabledBorder: OutlineInputBorder(

        borderSide: BorderSide(color:colorBlack, width: 2.0),

        borderRadius: BorderRadius.all(Radius.circular(2.0)),

      ),

      focusedBorder: OutlineInputBorder(

        borderSide: BorderSide(color: colorBlack, width: 2.0),

        borderRadius: BorderRadius.all(Radius.circular(2.0)),

      ),

    ),

    obscureText:scureText==null?false:scureText,

  ),
);

}


customButton({@required String name,bool isActive = true,TextStyle style,double height=45,double width=double.infinity,int BackgroundColor,Function function}){
  return InkWell(
    onTap: () {
      if (isActive) function();
    },
    child: Container(
      width: width,
      height:height ,
        decoration: BoxDecoration(
          color: BackgroundColor==null?colorBlack:BackgroundColor,
          borderRadius: new BorderRadius.all(Radius.circular(4.0)),
        ),
      child: Center(
        child: Text(name,style:style==null?TextStyle(color: colorWhite,fontSize: 18, )
 :style ),
      )),
  );
}
CustomText({@required String name,TextStyle style}){
  return Text(name,style:style==null?TextStyle(color: colorWhite,fontSize: 18, )
      :style );
}
