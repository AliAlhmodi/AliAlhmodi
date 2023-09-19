import 'package:flutter/material.dart';
import 'hmoe3.dart';
import 'calecltur.dart';
import 'home.dart';
import 'apph.dart';
import 'home.dart';
class drawer_1 extends StatelessWidget {
  const drawer_1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      
      
      
        child: ListView(children:<Widget> [
UserAccountsDrawerHeader(
  accountName:Text("Ali  Mhasen Ali Alhmodi"), 
accountEmail: Text("alialhmwdy716@gmail.com"),
currentAccountPicture: CircleAvatar(
  child:Icon(Icons.person)
),
decoration: BoxDecoration(
  color: Colors.green
),


),
Card(color:Color.fromARGB(204, 33, 243, 44),
borderOnForeground:true ,
elevation: 100,


  child:
ListTile(

title: Text("الحاسبة"),
onTap: () {
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CalculatorApp()));
}
)
),

Card(color:Color.fromARGB(204, 33, 243, 44),
borderOnForeground:true ,
elevation: 100,


  child:
ListTile(

title: Text("الصفحة الرئيسية"),
onTap: () {
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ali()));
}
)
),

Card(color:Color.fromARGB(204, 33, 243, 44),
borderOnForeground:true ,
elevation: 100,


  child:
ListTile(

title: Text(" home"),
onTap: () {
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sum_1()));
}
)
),


Card(color:Color.fromARGB(204, 33, 243, 44),
borderOnForeground:true ,
elevation: 100,


  child:
ListTile(

title: Text(" home3"),
onTap: () {
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>app()));
}
)
)

        ]) ,


    );
  }
}
