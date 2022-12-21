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
      backnum[0]= (backnum[0] + 1) % backgrounds.length;
    });
  }


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(
            elevation:5,
            backgroundColor: Colors.cyan.shade50.withOpacity(1.0),
            title: Text('Money manager',
              style:TextStyle(fontSize: 30,color: Colors.grey[600]) ,),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.color_lens),
                onPressed: changeBackground,
              ),
            ],
          ),
          body: Center(
              child: Container(
                decoration:backgroundsH[backgroundnum1],
                child:Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[800],
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade500,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                          ]),
                      height: 200,
                      width: 350,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Asset:',style: TextStyle(color: Colors.white,fontSize: 20),),
                          Text('\$'+assets[0].toString(),style: TextStyle(color: Colors.white,fontSize: 30),),
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
                                                style: TextStyle(color: Colors.grey[500])),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('\$'+incomes[0].toString(),
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontWeight: FontWeight.bold)),
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
                                                style: TextStyle(color: Colors.grey[500])),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('\$'+expenses[0].toString(),
                                                style: TextStyle(
                                                    color: Colors.grey[600],
                                                    fontWeight: FontWeight.bold)),
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
                            decoration: BoxDecoration(
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

                            child:ListTile(
                              title: Text((index + 1).toString() + '月'),
                              trailing: Text(assets[index+1].toString()),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=> MonthPage(index + 1),),).then((value){setState(() {
                                  assets[0]=incomes[0]-expenses[0];});});
                                },
                            ),);
                        },
                        separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.red,),
                      ),
                    ),
                  ],
                ),)
          ));
  }
}









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
          title: Text('Add Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Expense'),
                  Switch(
                    value:seletincome,
                    onChanged: (newValue) {
                      setState(() {
                        seletincome =!seletincome;
                      });print(seletincome);
                    },
                  ),
                  Text('Income'),
                ],
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                controller: nameController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
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
                    child: Text('Enter'),
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
                    child: Text('Cancel'),
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
        title: Text(widget.month.toString()+'月',
          style:TextStyle(fontSize: 30) ,),
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[800],
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
              width: 350,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Asset:',style: TextStyle(color: Colors.white,fontSize: 20),),
                  Text('\$'+assets[widget.month].toString(),style: TextStyle(color: Colors.white,fontSize: 30),),
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
                                    color: Colors.grey[200],
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.green,
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
                                        style: TextStyle(color: Colors.grey[500])),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('\$'+incomes[widget.month].toString(),
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.bold)),
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
                                    color: Colors.grey[200],
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.red,
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
                                        style: TextStyle(color: Colors.grey[500])),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('\$'+expenses[widget.month].toString(),
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontWeight: FontWeight.bold)),
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
              child: ListView.builder(
                itemCount: itemall[widget.month].length,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> item = itemall[widget.month][index];
                  return ListTile(
                      title: Text(item['name']),
                      subtitle: Text(DateFormat.Md().format(DateTime.now())),
                      trailing: Text(item['amount'].toString()),
                      leading: item['isIncome']
                          ? Icon(Icons.arrow_upward,color:Colors.green,)
                          : Icon(Icons.arrow_downward,color:Colors.red),
                      onLongPress: () =>_removeItem(index)
                  );
                },
              ),
            ),
          ],
        ),),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddDialog,
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}



