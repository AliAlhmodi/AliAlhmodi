import 'package:flutter/material.dart';

class  sum_1 extends StatelessWidget {
  const sum_1 ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ali mhsen",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true
      ),
      home: Scaffold(
      
    appBar: AppBar(),
    
    body: ListView(children: [

         filtext("nuber","input number one",Icon(Icons.search),
         Icon(Icons.person),Colors.green),
         filtext("nuber2","input number 2",Icon(Icons.person),Icon(Icons.search),Colors.red),
         filtext("rusrt","the sum",Icon(Icons.search),Icon(Icons.search),Color.fromARGB(255, 255, 255, 255)),
     
    ],
       
         )
    ),
    );
      
    
  }

  TextField filtext(lbl,hint,fill,piconm,sicons) {
    return TextField(
decoration: InputDecoration(label: Text(lbl),
hintText: hint,
fillColor: fill,
filled: true,
prefix: piconm,
suffixIcon: sicons,
border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
)

      );
  }
}