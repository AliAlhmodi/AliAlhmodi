import 'package:flutter/material.dart';

import 'drawer.dart';
void main() {
  runApp( myapp());
}
class myapp extends StatelessWidget {
  const myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(appBar: AppBar(),
    drawer: drawer_1(),
    body: Text("wlcome eng:Ali Mahsen ") ,

    
    
    
    ),      
    );
  }
}

