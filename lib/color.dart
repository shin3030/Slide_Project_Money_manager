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

  BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 187, 10, 10), Color.fromARGB(255, 187, 10, 10)],)),//----red

  BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 0, 0, 0),Color.fromARGB(255, 35, 35, 35), Color.fromARGB(255, 70, 70, 70),Color.fromARGB(255, 35, 35, 35),Color.fromARGB(255, 0, 0, 0)],)),//---blackglod

  BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.orange.shade200,
          Colors.orange.shade300,
        ]
    ),
  ),//-----tech
  BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.black,
          Colors.purple,
        ]
    ),
  ),


];

//appbar design---
List<Color> Happbar=[
  Color.fromARGB(255, 9, 120, 122),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 93, 59, 38),
  Color.fromARGB(255, 66, 2, 53),
];

//appbar Text design---
List<TextStyle> HbarText=[
  TextStyle(fontSize: 30,color:Colors.white,),
  TextStyle(fontSize: 30,color:Colors.white,),
  TextStyle(fontSize: 30,color:Colors.white,),
  TextStyle(fontSize: 30,color:Color.fromARGB(173, 255, 125, 0),),
  TextStyle(fontSize: 30,color: Color.fromARGB(255, 155, 18, 7),) ,
];

//-----------------Card-----------------

//Card design---
List<BoxDecoration> HCardground=[
  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.grey[800],
      boxShadow: [
        BoxShadow(
            color: Color.fromARGB(255, 8, 245, 253),
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
      color: Color.fromARGB(255, 0, 0, 0),
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
      ]),

  BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.orange.shade100,
  ),

  BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.red.shade300,
          Colors.white,
        ]
    ),
  ),

];

//'Asset' Text-------
List<TextStyle> HCardAsText=[
  TextStyle(color: Colors.white,fontSize: 30),
  TextStyle(color: Colors.white,fontSize: 30),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77),fontSize: 30),
  TextStyle(color: Colors.orange.shade600,fontSize: 30),
  TextStyle(color: Colors.purple.shade300,fontSize: 30),
];

//'Asset' (money)-------
List<TextStyle> HCardMAsText=[
  TextStyle(color: Colors.white,fontSize: 30),
  TextStyle(color: Colors.white,fontSize: 30),
  TextStyle(color:Colors.grey[600],fontSize: 30),
  TextStyle(color: Colors.orange.shade500,fontSize: 30),
  TextStyle(color: Colors.purple.shade300,fontSize: 30),
];

//'income' Text-------
List<TextStyle> HCardInText=[
  TextStyle(color:Color.fromARGB(255, 19, 255, 74),fontSize: 20),
  TextStyle(color: Colors.white,fontSize: 20),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77),fontSize: 20),
  TextStyle(color: Colors.orange.shade600,fontSize: 20),
  TextStyle(color: Colors.purple.shade200,fontSize: 20),
];

//$income (money)------
List<TextStyle> HCardMInText=[
  TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 20, fontWeight: FontWeight.bold),
  TextStyle(color: Colors.white,fontSize:20),
  TextStyle(color: Colors.grey[600],fontSize: 20,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.orange.shade500,fontSize: 20,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.purple.shade200,fontSize: 20,fontWeight: FontWeight.bold),
];

//'Expense' Text------
List<TextStyle> HCardExText=[
  TextStyle(color: Color.fromARGB(255, 255, 19, 137),fontSize: 20,),
  TextStyle(color: Colors.white,fontSize: 20),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77),fontSize: 20),
  TextStyle(color: Colors.orange.shade600,fontSize: 20),
  TextStyle(color: Colors.purple.shade200,fontSize: 20),
];

//$Expense (money)------
List<TextStyle> HCardMExText=[
  TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 20, fontWeight: FontWeight.bold),
  TextStyle(color: Colors.white,fontSize: 20),
  TextStyle(color: Colors.grey[600],fontSize: 20,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.orange.shade500,fontSize: 20,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.purple.shade200,fontSize: 20,fontWeight: FontWeight.bold),
];


//-----------------list-----------------------


//list Container------
List<BoxDecoration> listContainer=[
  BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromARGB(50, 0, 255, 226),
    border: Border.all(width: 2,color: Color.fromARGB(178, 8, 245, 253),),),

  BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.grey[800],
    border: Border.all(width: 2,color: Color.fromARGB(255, 255, 255, 255)),),

  BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromARGB(102, 0, 0, 0),
    border: Border.all(width: 2,color: Color.fromARGB(128, 255, 178, 77),),),

  BoxDecoration(
    borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(116, 252, 175, 57),
      border: Border.all(width: 2,color: Color.fromARGB(150, 248, 155, 89)),),

  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(115, 87, 83, 83),
        border: Border.all(width: 2,color: Color.fromARGB(229, 93, 80, 100)),),

];

//list title Text-------
List<TextStyle> listtitle=[
  TextStyle(color: Color.fromARGB(255, 8, 245, 253),),
  TextStyle(color: Colors.white),
  TextStyle(color:  Color.fromARGB(255, 255, 234, 176)),
  TextStyle(color: Colors.brown.shade600),
  TextStyle(color: Colors.purple.shade100),
];

//list trailing Text-----
List<TextStyle> listtrailing=[
  TextStyle(color: Color.fromARGB(255, 8, 245, 253),),
  TextStyle(color: Colors.white),
  TextStyle(color:  Color.fromARGB(255, 255, 234, 176)),
  TextStyle(color: Colors.brown.shade800),
  TextStyle(color: Colors.purple.shade100),
];

//Divider-------
List<Divider> listdivider=[
  Divider(color:Color.fromARGB(26, 0, 0, 0),thickness: 2,),
  Divider(color:Color.fromARGB(26, 0, 0, 0),thickness: 2,),
  Divider(color:Color.fromARGB(26, 0, 0, 0),thickness: 2,),
  Divider(color:Color.fromARGB(26, 0, 0, 0),thickness: 2,),
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
        colors: [Color.fromARGB(255, 187, 10, 10), Color.fromARGB(255, 187, 10, 10)],)),//----red

  BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 0, 0, 0),Color.fromARGB(255, 35, 35, 35), Color.fromARGB(255, 70, 70, 70),Color.fromARGB(255, 35, 35, 35),Color.fromARGB(255, 0, 0, 0)],)),//---blackglod

  BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color.fromARGB(174, 227, 180, 184),
        Color.fromARGB(174, 222, 28, 49),],
    ),
  ),
  BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color.fromARGB(173, 200, 141, 133),
        Color.fromARGB(255, 117, 131, 145),
        Color.fromARGB(173, 23, 32, 51),],
    ),
  ),

  BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 40, 143, 113),
          Color.fromARGB(255, 180, 160, 128),
          Color.fromARGB(255, 180, 160, 128),
          Color.fromARGB(255, 194, 124, 93),
          Color.fromARGB(255, 170, 97, 74),
        ]
    ),
  ),
];
//-----------------------------------彈跳視窗--------------
//AlertDiog design---
List<Color> stylealert=[
  Color.fromARGB(179, 8, 208, 253),
  Color.fromARGB(255, 187, 10, 10),
  Color.fromARGB(255, 77, 77, 77),
  Colors.red.shade200,
  Color.fromARGB(255, 154, 122, 131),
  Color.fromARGB(255, 194, 146, 98),
];

//AlerDiog Text design---
//125、129行==>labelstyle:Textstyle(),
List<TextStyle> styleALText=[
  TextStyle(color: Colors.black),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255),),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77),),
  TextStyle(color: Colors.purple[300],fontWeight: FontWeight.bold),
  TextStyle(color: Color.fromARGB(138,44,30,30), fontWeight: FontWeight.bold),
  TextStyle(color: Color.fromARGB(138,44,30,30),fontWeight: FontWeight.bold),
];

//Switch design---
List<Color> styleswitch=[
  Color.fromARGB(255, 0, 95, 112),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 255, 178, 77),
  Colors.purple.shade300,
  Color.fromARGB(138, 44, 30, 30),
  Color.fromARGB(138, 44, 30, 30),
];

//ElevatedButton design---
List<ButtonStyle> bstyle=[
  ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 95, 112),),//tech
  ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 0, 0, 0)),//red
  ElevatedButton.styleFrom(backgroundColor:  Color.fromARGB(255, 0, 0, 0)),
  ElevatedButton.styleFrom(backgroundColor: Colors.teal[200],),
  ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(100, 167, 105, 189),),
  ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(204, 64, 112, 66),),
];

//ElevatedButton Text design---
List<TextStyle> styleETEXT=[
  TextStyle(color: Colors.white),
  TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77)),
  TextStyle(color: Colors.purple[300],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.orange[100],fontWeight: FontWeight.bold),
];


//--------------------------------appbar---------------------
//appbar design---
List<Color> styleappbar=[
  Color.fromARGB(255, 9, 120, 122),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 0, 0, 0),
  Colors.pink.shade300,
  Color.fromARGB(128, 53, 53, 107),
  Colors.teal.shade600,
];

//appbar Text design---
List<TextStyle> stylebarText=[
  TextStyle(fontSize: 30,color:Colors.white,),
  TextStyle(fontSize: 30,color:Colors.white,),
  TextStyle(fontSize: 30,color:Colors.white,),
  TextStyle(fontSize: 30,color: Colors.pink[100]),
  TextStyle(fontSize: 30,color: Colors.purple[100]),
  TextStyle(fontSize: 30,color: Colors.teal[100]),
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
      ]),

  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color.fromARGB(138, 131, 91, 91),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
        BoxShadow(
            color: Colors.red,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
      ]),
  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color:  Color.fromARGB(128, 50, 10, 23),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
        BoxShadow(
            color: Colors.teal.shade200,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
      ]),

  BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color:Color.fromARGB(173, 13, 72, 72),
      boxShadow: [
        BoxShadow(
            color: Colors.grey.shade500,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
        BoxShadow(
            color: Colors.teal,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0),
      ]),

];

//'Asset' Text
List<TextStyle> CardAsText=[
  TextStyle(color:Colors.grey[200],fontSize: 30),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontSize: 30),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77),fontSize: 30),
  TextStyle(color: Colors.white,fontSize: 30),
  TextStyle(color: Colors.orange[100],fontSize: 30),
  TextStyle(color: Colors.white,fontSize: 30),
];

//'Asset' (Money)
List<TextStyle> CardMAsText=[
  TextStyle(color:Colors.grey[200],fontSize: 30,fontWeight: FontWeight.bold),
  TextStyle(color:Colors.grey[200],fontSize: 30,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[600],fontSize: 30,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.orange[100],fontSize: 30,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
];


//Circle in Card----
List<Color> styleCirle=[
  Color.fromARGB(255, 213, 253, 255),
  Colors.grey.shade200,
  Color.fromARGB(255, 56, 56, 56),
  Colors.grey.shade100,
  Colors.orange.shade100,
  Colors.grey.shade200,

];

//up arrow design---
List<Color> styleup=[
  Color.fromARGB(255, 19, 255, 74),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 255, 178, 77),
  Colors.teal,
  Colors.green.shade900,
  Colors.green.shade900,
];

//'income' Text-------
List<TextStyle> CardInText=[
  TextStyle(color:Color.fromARGB(255, 19, 255, 74)),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255)),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77)),
  TextStyle(color: Colors.pink[100],),
  TextStyle(color: Colors.grey[400],),
  TextStyle(color: Colors.grey[400])
];

//$income (money)------
List<TextStyle> CardMInText=[
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.pink[100],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold),
];

//down arrow design---
List<Color> styledown=[
  Color.fromARGB(255, 255, 19, 137),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 255, 178, 77),
  Colors.deepOrange.shade900,
  Colors.red.shade900,
  Colors.red.shade900,
];

//'Expense' Text------
List<TextStyle> CardExText=[
  TextStyle(color: Color.fromARGB(255, 255, 19, 137),),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255)),
  TextStyle(color: Color.fromARGB(255, 255, 178, 77)),
  TextStyle(color: Colors.pink[100],),
  TextStyle(color: Colors.grey[400],),
  TextStyle(color: Colors.grey[400])
];

//$Expense (money)------
List<TextStyle> CardMExText=[
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color:Colors.grey[200],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.pink[100],fontWeight: FontWeight.bold),
  TextStyle(color:Colors.grey[400],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold),
];


//-------------------------------List-------------------------
//list Name amd Amount Text design---
List<TextStyle> listname=[
  TextStyle(color:Color.fromARGB(255, 8, 245, 253)),
  TextStyle(color:Color.fromARGB(255, 255, 255, 255)),
  TextStyle(color:  Color.fromARGB(255, 255, 234, 176)),
  TextStyle(color: Colors.white),
  TextStyle(color: Colors.purple[900],),
  TextStyle(color: Colors.purple[900],),
];

//list Date design------
List<TextStyle> listDate=[
  TextStyle(color:Color.fromARGB(255, 8, 245, 253)),
  TextStyle(color: Color.fromARGB(255, 255, 255, 255),),
  TextStyle(color:  Color.fromARGB(255, 255, 234, 176)),
  TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
  TextStyle(color: Colors.purple[900],fontWeight: FontWeight.bold),
  TextStyle(color: Colors.purple[900],fontWeight: FontWeight.bold),
];


//-----------------------------------FloatButton----------------
//FloatButton design-----
List<Color> styleFloatbutton=[
  Color.fromARGB(255, 70, 70, 70),
  Color.fromARGB(255, 0, 0, 0),
  Color.fromARGB(255, 35, 35, 35),
  Colors.redAccent.shade400,
  Color.fromARGB(173, 44, 70, 98),
  Color.fromARGB(255, 124, 79, 79),
];

//FloatButton icon design---
List<Icon> styleFloaticon=[
  Icon(Icons.add,color: Color.fromARGB(255, 8, 245, 253),),
  Icon(Icons.add,color: Color.fromARGB(255, 255, 255, 255),),
  Icon(Icons.add,color: Color.fromARGB(255, 255, 178, 77),),
  Icon(Icons.filter_vintage_outlined,color: Colors.red.shade100,),
  Icon(Icons.dark_mode,color: Colors.yellowAccent,size: 30,),
  Icon(Icons.park_rounded,color: Colors.green,size: 35,),
];

List<Divider> styledivider=[
  Divider(color: Colors.cyan,thickness: 2,),
  Divider(color: Colors.black,thickness: 2,),
  Divider(color: Color.fromARGB(255, 164, 119, 53),thickness: 2,),
  Divider(color: Color.fromARGB(64, 222, 28, 49),thickness: 2,),
  Divider(color: Color.fromARGB(77, 23, 32, 51),thickness: 2,),
  Divider(color: Color.fromARGB(77, 170, 97, 74),thickness: 2,),
];