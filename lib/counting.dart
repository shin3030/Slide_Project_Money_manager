import 'dart:math';
import 'color.dart';
import 'package:flutter/material.dart';

int total_asset=0;
int total_income=0;
int total_expense=0;

int backgroundnumH=0;
int backgroundnum1=0;int backgroundnum2=0;int backgroundnum3=0;int backgroundnum4=0;
int backgroundnum5=0;int backgroundnum6=0;int backgroundnum7=0;int backgroundnum8=0;
int backgroundnum9=0;int backgroundnum10=0;int backgroundnum11=0;int backgroundnum12=0;


final TextEditingController nameController = TextEditingController();
final TextEditingController amountController = TextEditingController();

//1月
List<Map<String, dynamic>> items1 = [];
int asset1=0;
int income1=0;
int expense1=0;

//2月
List<Map<String, dynamic>> items2 = [];
int asset2=0;
int income2=0;
int expense2=0;

//3月
List<Map<String, dynamic>> items3 = [];
int asset3=0;
int income3=0;
int expense3=0;

//4月
List<Map<String, dynamic>> items4 = [];
int asset4=0;
int income4=0;
int expense4=0;

//5月
List<Map<String, dynamic>> items5 = [];
int asset5=0;
int income5=0;
int expense5=0;

//6月
List<Map<String, dynamic>> items6 = [];
int asset6=0;
int income6=0;
int expense6=0;

//7月
List<Map<String, dynamic>> items7 = [];
int asset7=0;
int income7=0;
int expense7=0;

//8月
List<Map<String, dynamic>> items8 = [];
int asset8=0;
int income8=0;
int expense8=0;

//9月
List<Map<String, dynamic>> items9 = [];
int asset9=0;
int income9=0;
int expense9=0;

//10月
List<Map<String, dynamic>> items10 = [];
int asset10=0;
int income10=0;
int expense10=0;

//11月
List<Map<String, dynamic>> items11 = [];
int asset11=0;
int income11=0;
int expense11=0;

//1月
List<Map<String, dynamic>> items12 = [];
int asset12=0;
int income12=0;
int expense12=0;

List<Map<String, dynamic>> itemH=[];
List<List<Map<String, dynamic>>> itemall=[
  itemH,
  items1,items2,items3,items4,
  items5,items6,items7,items8,
  items9,items10,items11,items12,

];
List<int> incomes=[
  total_income,
  income1,income2,income3,income4,
  income5,income6,income7,income8,
  income9,income10,income11,income12,
];
List<int> expenses=[
  total_expense,
  expense1,expense2,expense3,expense4,
  expense5,expense6,expense7,expense8,
  expense9,expense10,expense11,expense12,
];
List<int> assets=[
  total_asset,
  asset1,asset2,asset3,asset4,
  asset5,asset6,asset7,asset8,
  asset9,asset10,asset11,asset12,
];

List backnum=[
  backgroundnumH,
  backgroundnum1,backgroundnum2,backgroundnum3,backgroundnum4,
  backgroundnum5,backgroundnum6,backgroundnum7,backgroundnum8,
  backgroundnum9,backgroundnum10,backgroundnum11,backgroundnum12,
];

