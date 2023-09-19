import 'package:flutter/material.dart';

void main() {
  runApp( ali());
}
class ali extends StatefulWidget {
  const ali ({ Key? key }) : super(key: key);

  @override
  State  createState() => _aliState();
}

class _aliState extends State {
  List <String> I=["ali","mahsen","ali","alhmodi"];
  @override
  Widget build(BuildContext context) {
    TextEditingController obg= TextEditingController();
int ind=0;
    return Material(
      child: Scaffold( appBar: AppBar(),

      body: Column(children: 
      [Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: obg,
          onSubmitted: (v)=>setState(() {
            I.add(v);
          }),
          keyboardType: TextInputType.text,
          
          decoration: InputDecoration(hintText: "input text",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),),
      ),
     Expanded(flex: 3,child:
      Container(child: ListView.builder(itemCount: I.length,
     itemBuilder: (BuildContext ctx, int i){
return Card(
  
  borderOnForeground: true,
  elevation: 10,
  shadowColor: Colors.blue,
  shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
  color: Color.fromARGB(255, 163, 154, 75),
  child: ListTile(
    tileColor: Colors.cyan,
    title: Text( I[i]),
onTap: () {
  ind =i;
},
leading: IconButton (icon: Icon(Icons.delete),
onPressed: () {
setState(() {
  I.remove(i);
});
  
}),

),
 

  
);


     },),
     ),

     ),
 Column(
   children: [
     TextButton(style: ButtonStyle(
       shape: MaterialStateProperty.all(CircleBorder(side:BorderSide.none )
       
      ),
       

),onPressed:(() {
      setState(() {
        I.add(obg.text);
      });
}) 


, child: Text("enter")),
   ],
 )

      ]),

  
    ),); 
    }
}