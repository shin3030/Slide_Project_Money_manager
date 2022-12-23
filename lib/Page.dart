import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'color.dart';
import 'counting.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{



  void changeBackground() {
    setState(() {
      backnum[0]= (backnum[0] + 1) % backgroundsH.length;
      });

  }


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(
            elevation:5,
            backgroundColor:Happbar[backnum[0]],
            title: Text('Money manager',
              style:HbarText[backnum[0]] ,),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.color_lens),
                onPressed: changeBackground,
              ),
            ],
          ),
          body: Center(
              child: Container(
                decoration:backgroundsH[backnum[0]],
                child:Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      decoration: HCardground[backnum[0]],
                      height: 200,
                      width: 350,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Asset:',style: HCardAsText[backnum[0]],),
                          Text('\$'+assets[0].toString(),style:HCardMAsText[backnum[0]],),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Income',
                                                style:HCardInText[backnum[0]]),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('\$'+incomes[0].toString(),
                                                style: HCardMInText[backnum[0]]),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Expense',
                                                style:HCardExText[backnum[0]]),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('\$'+expenses[0].toString(),
                                                style: HCardMExText[backnum[0]]),
                                          ],
                                        )
                                      ],
                                    )
                                  ])

                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.all(1),
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 60,
                            decoration:listContainer[backnum[0]],
                            child:ListTile(
                              title: Text((index + 1).toString() + '月',style: listtitle[backnum[0]],),
                              trailing: Text(assets[index+1].toString(),style:listtrailing[backnum[0]],),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=> MonthPage(index + 1),),).then((value){setState(() {
                                  assets[0]=incomes[0]-expenses[0];});});
                                },
                            ),);
                        },
                        separatorBuilder: (BuildContext context, int index) => listdivider[backnum[0]],
                      ),
                    ),
                  ],
                ),)
          ));
  }
}





////////////////////////////--Month--///////////////////////////////////////



class MonthPage extends StatefulWidget {
  final int month;

  MonthPage(this.month);

  @override
  _MonthPageState createState() => _MonthPageState();
}

class _MonthPageState extends State<MonthPage>{
  bool seletincome=false;


  void changeBackground() {
    setState(() {

      backnum[widget.month]= (backnum[widget.month] + 1) % backgrounds.length;
    });
  }



  void _addItem(String name, int amount, bool isIncome) {
    setState(() {
      if (isIncome) {
        incomes[widget.month] += amount;
        incomes[0]+=amount;
      } else {
        expenses[widget.month]+= amount;
        expenses[0]+=amount;
      }
      assets[widget.month] = incomes[widget.month] - expenses[widget.month];
      itemall[widget.month].add({
        'name': name,
        'amount':amount,
        'isIncome': isIncome,
      });
    });

  }

  void _removeItem(int index) {
    setState(() {

      Map<String, dynamic> item = itemall[widget.month][index];
      int a1=item['amount'];

      if (item['isIncome']) {
        incomes[widget.month] -= a1;
        incomes[0]-=a1;
      } else {
        expenses[widget.month] -= a1;
        expenses[0]-=a1;
      }
      assets[widget.month] = incomes[widget.month] - expenses[widget.month];
      itemall[widget.month].removeAt(index);
      itemH=itemall[widget.month];
    });
  }



  void _showAddDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, setState) {
        return AlertDialog(
          backgroundColor: stylealert[backnum[widget.month]],
          title: Text('Add Item',style: styleALText[backnum[widget.month]],),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Expense',style: styleALText[backnum[widget.month]],),
                  Switch(
                    activeColor: styleswitch[backnum[widget.month]],
                    value:seletincome,
                    onChanged: (newValue) {
                      setState(() {
                        seletincome =!seletincome;
                      });print(seletincome);
                    },
                  ),
                  Text('Income',style: styleALText[backnum[widget.month]],),
                ],
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Name',labelStyle: styleALText[backnum[widget.month]],),
                controller: nameController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount',labelStyle: styleALText[backnum[widget.month]],),
                keyboardType: TextInputType.number,
                controller: amountController,
              ),

              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: bstyle[backnum[widget.month]],
                    child: Text('Enter',style: styleALText[backnum[widget.month]],),
                    onPressed: () {
                      _addItem(nameController.text, int.parse(amountController.text), seletincome);
                      Navigator.of(context).pop();
                      nameController.text = '';
                      amountController.text = '';
                      setState((){
                        seletincome=false;
                      });
                    },
                  ),
                  ElevatedButton(
                    style: bstyle[backnum[widget.month]],
                    child: Text('Cancel',style: styleALText[backnum[widget.month]],),
                    onPressed: () {
                      Navigator.of(context).pop();
                      nameController.text = '';
                      amountController.text = '';
                      setState((){
                        seletincome=false;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        );});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: styleappbar[backnum[widget.month]],
        title: Text(widget.month.toString()+'月',
          style:stylebarText[backnum[widget.month]] ,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.color_lens),
            onPressed: changeBackground,
          ),
        ],

      ),
      body:Container(
        decoration: backgrounds[backnum[widget.month]],
        child:Column(
          children: [
            SizedBox(width: 0,height: 20,),
            Container(
              decoration:Cardground[backnum[widget.month]],
              width: 350,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Asset:',style: CardAsText[backnum[widget.month]]),
                  Text('\$'+assets[widget.month].toString(),style: CardMAsText[backnum[widget.month]]),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: styleCirle[backnum[widget.month]],
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color:styleup[backnum[widget.month]],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Income',
                                        style:CardInText[backnum[widget.month]]),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('\$'+incomes[widget.month].toString(),
                                        style: CardMInText[backnum[widget.month]]),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: styleCirle[backnum[widget.month]],
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color:styledown[backnum[widget.month]],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Expense',
                                        style: CardExText[backnum[widget.month]]),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('\$'+expenses[widget.month].toString(),
                                        style: CardMExText[backnum[widget.month]]),
                                  ],
                                )
                              ],
                            )
                          ])
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: itemall[widget.month].length,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> item = itemall[widget.month][index];
                  return ListTile(
                      title: Text(item['name'],style: listname[backnum[widget.month]],),
                      subtitle: Text(DateFormat.Md().format(DateTime.now()),style: listDate[backnum[widget.month]]),
                      trailing: Text(item['amount'].toString(),style: listname[backnum[widget.month]]),
                      leading: item['isIncome']
                          ? Icon(Icons.arrow_upward,color:styleup[backnum[widget.month]],)
                          : Icon(Icons.arrow_downward,color:styledown[backnum[widget.month]]),
                      onLongPress: () =>_removeItem(index)
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>styledivider[backnum[widget.month]],
              ),
            ),
          ],
        ),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: styleFloatbutton[backnum[widget.month]],
        onPressed: _showAddDialog,
        tooltip: 'Add Item',
        child: styleFloaticon[backnum[widget.month]],
      ),
    );
  }
}



