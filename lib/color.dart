import 'package:flutter/material.dart';

//注意使用這裡的素材更改樣式時，不能使用Hot reload，要使用Run，如此才會更新color.dart。


/////////////////////////////////////////////////////////////////////////////////////////////////////////
//--------------------------------------------Homepage-----------------------------------------------//


//background design---
List<BoxDecoration> backgroundsH = [
  BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color.fromARGB(255, 49, 49, 49), Color.fromARGB(
          255, 9, 120, 122)],
    ),
  ),//-----tech



];

//appbar design---
List<Color> Happbar=[
  Color.fromARGB(115, 255, 255, 255),

];

//appbar Text design---
List<TextStyle> HbarText=[
  TextStyle(fontSize: 30,color:Colors.white,),

];

//-----------------Card-----------------

//Card design---
List<BoxDecoration> HCardground=[
  BoxDecoration(

    borderRadius: BorderRadius.circular(15),
    color: Color.fromARGB(115, 255, 255, 255),
  ),//-----tech



];

//'Asset' Text-------
List<TextStyle> HCardAsText=[
  TextStyle(color: Colors.white,fontSize: 30)

];

//'Asset' (money)-------
List<TextStyle> HCardMAsText=[
  TextStyle(color: Colors.white,fontSize: 30)

];

//'income' Text-------
List<TextStyle> HCardInText=[
  TextStyle(color: Colors.white),

];

//$income (money)------
List<TextStyle> HCardMInText=[
  TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),

];

//'Expense' Text------
List<TextStyle> HCardExText=[
  TextStyle(color: Colors.white),

];

//$Expense (money)------
List<TextStyle> HCardMExText=[
  TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),

];


//-----------------list-----------------------


//list Container------
List<BoxDecoration> listContainer=[
  BoxDecoration(

    borderRadius: BorderRadius.circular(10),
    color: Color.fromARGB(116, 243, 243, 243),
    border: Border.all(width: 2,color: Color.fromARGB(229, 253, 253, 253)),

  ),


];

//list title Text-------
List<TextStyle> listtitle=[
  TextStyle(color: Colors.black),

];

//list trailing Text-----
List<TextStyle> listtrailing=[
  TextStyle(color: Colors.black),

];

//Divider-------
List<Divider> listdivider=[
  Divider(color:Color.fromARGB(26, 0, 0, 0),thickness: 2,),

];
/////////////////////////////////////////////////////////////////////////////////////////////

//-----------------------------Month Page------------------------------

//background design---
List<BoxDecoration> backgrounds = [
  BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color.fromARGB(255, 49, 49, 49), Color.fromARGB(
          255, 9, 120, 122)],
    ),
  ),//-----tech
  BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color.fromARGB(255, 187, 10, 10), Color.fromARGB(
              255, 187, 10, 10)],))//----red


];
//-----------------------------------彈跳視窗--------------
//AlertDiog design---
List<Color> stylealert=[
  Color.fromARGB(179, 8, 208, 253),
  Color.fromARGB(255, 187, 10, 10),
];

//AlerDiog Text design---
//125、129行==>labelstyle:Textstyle(),
List<TextStyle> styleALText=[
  TextStyle(color: Colors.black),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255),)
];

//Switch design---
List<Color> styleswitch=[
  Color.fromARGB(255, 255, 255, 255),
  Color.fromARGB(255, 0, 0, 0),
];

//ElevatedButton design---
List<ButtonStyle> bstyle=[
  ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 95, 112),),//tech
  ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 0, 0, 0)),//red
];

//ElevatedButton Text design---
List<TextStyle> styleETEXT=[
  TextStyle(color: Colors.white),
  TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
];


//--------------------------------appbar---------------------
//appbar design---
List<Color> styleappbar=[
  Color.fromARGB(255, 9, 120, 122),
  Color.fromARGB(255, 0, 0, 0),
];

//appbar Text design---
List<TextStyle> stylebarText=[
  TextStyle(fontSize: 30,color:Colors.white,),
  TextStyle(fontSize: 30,color:Colors.white,),
];



//--------------------------------Card------------------------
//Card design---
List<BoxDecoration> Cardground=[
  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.grey[800],
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
        BoxShadow(
            color:Color.fromARGB(255, 8, 245, 253),
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
      ]),//-----tech

  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.grey[800],
      boxShadow: [
        BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255),
            offset: Offset(4.0, 4.0),
            blurRadius: 0.0,
            spreadRadius: 1.0),
        BoxShadow(
            color:Color.fromARGB(255, 255, 255, 255),
            offset: Offset(-4.0, -4.0),
            blurRadius: 0.0,
            spreadRadius: 1.0),
      ]),//-----red

  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color.fromARGB(
          255, 0, 0, 0),
      boxShadow: [
        BoxShadow(
            color:Color.fromARGB(255, 255, 178, 77),
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
        BoxShadow(
            color: Color.fromARGB(255, 255, 178, 77),
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
      ]),//Black Card-------

];

//'Asset' Text
List<TextStyle> CardAsText=[
  TextStyle(color:Color.fromARGB(255, 19, 255, 74)),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255)),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77)),
];

//'Asset' (Money)
List<TextStyle> CardMAsText=[
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),
];

//Circle in Card----
List<Color> styleCirle=[
  Color.fromARGB(255, 213, 253, 255),
  Colors.grey.shade200,
  Color.fromARGB(255, 56, 56, 56),
];

//up arrow design---
List<Color> styleup=[
  Color.fromARGB(255, 19, 255, 74),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 255, 178, 77),
];

//'income' Text-------
List<TextStyle> CardInText=[
  TextStyle(color:Color.fromARGB(255, 19, 255, 74)),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255)),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77)),
];

//$income (money)------
List<TextStyle> CardMInText=[
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),
];

//down arrow design---
List<Color> styledown=[
  Color.fromARGB(255, 255, 19, 137),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 255, 178, 77),
];

//'Expense' Text------
List<TextStyle> CardExText=[
  TextStyle(color: Color.fromARGB(255, 255, 19, 137),),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255)),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77)),
];

//$Expense (money)------
List<TextStyle> CardMExText=[
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),
];


//-------------------------------List-------------------------
//list Name amd Amount Text design---
List<TextStyle> listname=[
  TextStyle(color:Color.fromARGB(255, 8, 245, 253)),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255)),
  TextStyle(color:  Color.fromARGB(255, 255, 234, 176)),
];

//list Date design------
List<TextStyle> listDate=[
  TextStyle(color:Color.fromARGB(255, 8, 245, 253)),
  TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
  TextStyle(color:  Color.fromARGB(255, 255, 234, 176)),
];


//-----------------------------------FloatButton----------------
//FloatButton design-----
List<Color> styleFloatbutton=[
  Color.fromARGB(255, 70, 70, 70),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 35, 35, 35),
];

//FloatButton icon design---
List<Icon> styleFloaticon=[
  Icon(Icons.add,color: Color.fromARGB(255, 8, 245, 253),),
  Icon(Icons.add,color: Color.fromARGB(255, 255, 255, 255),),
  Icon(Icons.add,color: Color.fromARGB(255, 255, 178, 77),),
];

List<Divider> styledivider=[
  Divider(color: Colors.cyan,thickness: 2,),
  Divider(color: Colors.black,thickness: 2,),
  Divider(color: Color.fromARGB(255, 164, 119, 53),thickness: 2,),
];
