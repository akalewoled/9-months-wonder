
import 'package:flutter/material.dart';
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:classapp1/counter_model.dart';

class Infocard extends StatelessWidget{
  final String name,profession;
  const Infocard({
    Key ? key,
    required this.name,
    required this.profession,
  }):super(key:key);
 
@override
Widget build( BuildContext context){
  return  
  ListTile(

                    leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Icon(
                      CupertinoIcons.person,
                      color: Colors.black,
                    ),
                    ),
                    title: Text(
                    name,
                      style: TextStyle(color:Colors.white)),
                      subtitle: Text(
                        profession,
                        style: TextStyle(color: Colors.white),
                      ),

                    );
                    

            
          
}

}