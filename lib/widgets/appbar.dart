
import 'package:flutter/material.dart';
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:classapp1/counter_model.dart';

class appbar extends StatelessWidget  implements PreferredSizeWidget{

  final String title;
  const appbar( {
    Key ? key,
    required this.title,
  }):super(key:key);
   
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Standard app bar height

   
@override
Widget build( BuildContext context){
  return   AppBar(
    
          title: Text(title),
          backgroundColor: Color.fromRGBO(251, 125, 58, 0.992),
        );
            
          
}

}