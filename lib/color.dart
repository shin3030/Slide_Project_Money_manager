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
  Color.fromARGB(255, 9, 120, 122),
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

];

//Circle in Card----
List<Color> HCircle=[

];

//up arrow design---
List<Color> Hup=[

];

//'income' Text-------
List<TextStyle> HCardInText=[

];

//$income (money)------
List<TextStyle> HCardMInText=[

];

//down arrow design---
List<Color> Hdown=[

];

//'Expense' Text------
List<TextStyle> HCardExText=[

];

//$Expense (money)------
List<TextStyle> HCardMExText=[

];


//-----------------list-----------------------


//list Container------
List<BoxDecoration> listContainer=[
  BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.red.shade50.withOpacity(0.25),
      border: Border.all(width: 2,color: Colors.grey),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
        BoxShadow(
            color: Colors.pink.shade50,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
      ]
  ),
];

//list title Text-------
List<TextStyle> listtitle=[

];

//list trailing Text-----
List<TextStyle> listtrailing=[

];

//Divider-------
List<Color> listdivider=[

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


];
//-----------------------------------彈跳視窗--------------
//AlertDiog design---
List<Color> stylealert=[
  Color.fromARGB(179, 8, 208, 253),
];

//AlerDiog Text design---
//125、129行==>labelstyle:Textstyle(),
List<TextStyle> styleALText=[
  TextStyle(color: Colors.black),
];

//Switch design---
List<Color> styleswitch=[
  Color.fromARGB(255, 255, 255, 255),
];

//ElevatedButton design---
List<ButtonStyle> bstyle=[
  ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 95, 112),),//tech
];

//ElevatedButton Text design---
List<TextStyle> styleETEXT=[
  TextStyle(color: Colors.white),
];


//--------------------------------appbar---------------------
//appbar design---
List<Color> styleappbar=[
  Color.fromARGB(255, 9, 120, 122),
];

//appbar Text design---
List<TextStyle> stylebarText=[
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

];

//Circle in Card----
List<Color> styleCirle=[
  Colors.grey.shade200,
];

//up arrow design---
List<Color> styleup=[
  Color.fromARGB(255, 19, 255, 74),
];

//'income' Text-------
List<TextStyle> CardInText=[
  TextStyle(color:Color.fromARGB(255, 19, 255, 74)),
];

//$income (money)------
List<TextStyle> CardMInText=[
  TextStyle(color:Colors.grey[200]),
];

//down arrow design---
List<Color> styledown=[
  Color.fromARGB(255, 255, 19, 137),
];

//'Expense' Text------
List<TextStyle> CardExText=[
  TextStyle(color: Color.fromARGB(255, 255, 19, 137),)
];

//$Expense (money)------
List<TextStyle> CardMExText=[
  TextStyle(color:Colors.grey[200]),
];


//-------------------------------List-------------------------
//list Name amd Amount Text design---
List<TextStyle> listname=[
  TextStyle(color:Color.fromARGB(255, 8, 245, 253)),
];

//list Date design------
List<TextStyle> listDate=[
  TextStyle(color:Color.fromARGB(255, 8, 245, 253)),
];


//-----------------------------------FloatButton----------------
//FloatButton design-----
List<Color> styleFloatbutton=[
  Color.fromARGB(255, 70, 70, 70),
];

//FloatButton icon design---
List<Icon> styleFloaticon=[
  Icon(Icons.add,color: Color.fromARGB(255, 8, 245, 253),),
];


