import 'package:flutter/material.dart';
//import 'package:sfm923/commons/collapsing_list_tile.dart';
//import 'package:sfm923/model/navigation_model.dart';
import 'package:sfm923/commons/collapsing_navigation_drawer.dart';
import 'package:sfm923/commons/theme.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search FM 92.3',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        title: Text("Search FM 92.3 Campus Radio"),
        

        
      ),//AppBar
     
      drawer:CollapsingNavigationDrawer(),
      body : Stack(
        children: <Widget>[
           new Container(
             //color : selectedColor,
           decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/tgif.jpg"),
            fit: BoxFit.fill,
          ),
        ),
          ),
          
        

        
        ],

      ),
bottomNavigationBar : new BottomNavigationBar(items:[
          new BottomNavigationBarItem(icon : new Icon(Icons.add_shopping_cart),
          title: new Text('shopping')),
         
          ]
),

      
      //body: CollapsingNavigationDrawer(),
    ) ;
    //Scaffold
  }
}
 
