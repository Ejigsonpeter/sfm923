import 'package:flutter/material.dart';

class NavigationModel{
  String title;
  IconData icon;

  NavigationModel ({this.title,this.icon})
;}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Listen Live",icon: Icons.headset_mic),
  NavigationModel(title: "Watch Live",icon: Icons.live_tv),
  NavigationModel(title: "News Update",icon: Icons.chrome_reader_mode),
  NavigationModel(title: "Programme",icon: Icons.developer_board),
  NavigationModel(title: "UReport",icon: Icons.report),
  NavigationModel(title: "Social Media",icon: Icons.insert_chart),
  NavigationModel(title: "Website",icon: Icons.language),
  NavigationModel(title: "Contact us",icon: Icons.local_phone ),
  NavigationModel(title: "Settings",icon: Icons.settings),
  NavigationModel(title: "Exit",icon: Icons.exit_to_app),

];