
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';
import 'package:classapp1/counter_model.dart';
import 'package:classapp1/widgets/CustomNavigationbar.dart';

import 'package:classapp1/counter_model.dart';
import 'package:classapp1/widgets/infocard.dart';
import 'package:classapp1/widgets/appbar.dart';
import 'package:classapp1/widgets/slidingmenu.dart';
class mychild extends StatefulWidget {
  const  mychild({super.key});

  @override
  State <mychild> createState()=> _mychild();

}
class _mychild extends State<mychild>{
  @override
    Widget build(BuildContext context) {

    return Consumer<CounterModel>(
      builder:(context,value,child)=>
       Scaffold(
      
        //  bottomNavigationBarr: CustomNavigationBar(controller: controller),
        appBar: appbar(title: "my child page"),
    
        endDrawer: SlidingMenu(),
      
        //body:Obx(() =>controller.Screens[controller.selectedIndex.value]),
      
      body:Stack(children: [
        Align( 
          alignment:Alignment.bottomCenter,
        
        child: CustomNavigationBar()),
      
      ],)
      ,
         
      
          
            
          
        
      ),
    );
  }

}
