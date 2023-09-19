import 'package:flutter/material.dart';
class app extends StatelessWidget {
  const app({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: "ali",
      home: Directionality(textDirection: TextDirection.rtl, child: 
      
       Scaffold(
        appBar: AppBar(
          title: Text("home"),
        backgroundColor: Colors.blue,
        elevation: 10,
        actions:<Widget>[IconButton(icon: Icon(Icons.search),onPressed: (){}),
        ],
        
        ),
        
        
        
       drawer: Drawer(
         child: ListView(
           children: [
           UserAccountsDrawerHeader(accountName: Text("eng.Ali Mahsen Ali Alhmodi"),
            accountEmail: Text("alialhmwdi716@gmail.com"),
            currentAccountPicture: CircleAvatar(child:Icon(Icons.person),),
            decoration: BoxDecoration(color: Colors.red,
            
            ),
            
            
            ),
            ListTile(
          title: Text("الصفحة الرئيسية",style: TextStyle(color: Colors.blue,),),
          leading: Icon(Icons.home,color: Colors.brown),
          trailing: Icon(Icons.hot_tub),
          onTap: (){


          },

            ),
             
            ListTile(
          title: Text("الاقسام",style: TextStyle(color: Colors.blue),),
          leading: Icon(Icons.home,color: Colors.brown,),
          trailing: Icon(Icons.hot_tub),
          onTap: (){

            
          },

            )

           ],
           


         ),
       ),
         
      
      ),
      )
    );
  }
}


      