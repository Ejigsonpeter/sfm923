import 'package:flutter/material.dart';
import 'package:sfm923/commons/collapsing_list_tile.dart';
import 'package:sfm923/model/navigation_model.dart';
import 'package:sfm923/commons/theme.dart';


class  CollapsingNavigationDrawer extends StatefulWidget{
  @override
  CollapsingNavigationDrawerState createState(){
    return new CollapsingNavigationDrawerState();
  } 
}


class CollapsingNavigationDrawerState extends State <CollapsingNavigationDrawer>  with SingleTickerProviderStateMixin
 {

  double maxWidth = 250;
  double minWidth = 80;
  bool isCollapsed = false;
  AnimationController _animationController;
  Animation <double> widthAnimation;
  int curreSelectedIndex = 0;
  
  @override
  void initState(){
    super.initState();
    _animationController =AnimationController(vsync: this,duration: Duration(milliseconds: 300));
    widthAnimation =Tween<double> (begin: maxWidth, end: minWidth).animate(_animationController);
  }

  @override
  Widget build (BuildContext context){
   return AnimatedBuilder(animation :_animationController , builder: (context, widget) => getWidget(context,widget),);
  }


  Widget getWidget(context, widget){
    return Material(
      elevation: 80.0,
    child :Container(
      width: widthAnimation.value,
      color: drawerBackgroundColor,
      child: Column(
      children: <Widget>[
        SizedBox(height: 50.0, ),  
        CollapsingListTile(

        title :"SearchFM 92.3",
        icon : Icons.live_tv
        
        ,
        animationController: _animationController,
        ),
        Divider(color:Colors.grey,height:40.0,),

        Expanded(
        child: ListView.separated(
          separatorBuilder: (context,counter){
          return Divider(height:12.0 );  
          },
          itemBuilder: (context,counter) {
        return CollapsingListTile(
          onTap : () {
            setState(() {
             curreSelectedIndex = counter; 
            });

          },
          isSelected :curreSelectedIndex ==counter,
        title :navigationItems[counter].title,
        icon : navigationItems[counter].icon,
        animationController :_animationController,
        );
      },
      itemCount: navigationItems.length  ,
      ),
        ),
  
        InkWell(
          onTap: (){
            setState(() {
             isCollapsed  = !isCollapsed;   
             isCollapsed  ? _animationController.forward()
             :_animationController.reverse();
            });
          },   
          
      
 
          child :
          AnimatedIcon(
           icon:AnimatedIcons.close_menu,
           progress:_animationController,
            color:Colors.white,
            size :50.0,),
        ),
        SizedBox(height :50.0, 
        ),
    ],
    ),  
    ),
    );

  }
 }
 
