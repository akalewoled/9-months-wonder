
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
class SecondPage extends StatefulWidget {
  const  SecondPage({super.key});

  @override
  State <SecondPage> createState()=> _SecondPageState();

}
class _SecondPageState extends State<SecondPage>{
  @override
    Widget build(BuildContext context) {

    return Consumer<CounterModel>(
      builder:(context,value,child)=>
       Scaffold(
      
        //  bottomNavigationBarr: CustomNavigationBar(controller: controller),
        appBar: appbar(title: "welcome to the second page"),
    
        endDrawer: SlidingMenu(),
      
        //body:Obx(() =>controller.Screens[controller.selectedIndex.value]),
      
      body:Stack(
        
        
        children: [
            Container(
                color:Color.fromRGBO(245, 241, 236, 1),  // Set the background color
                height: double.infinity, // Ensures background fills the viewport
                width: double.infinity,
              ),
        Align( 
          alignment:Alignment.bottomCenter,
          
        
        child: CustomNavigationBar()),
        SingleChildScrollView(
          
           child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Align(// just for the welcometext
                        alignment: Alignment.centerLeft,
                        child: Container(
                          
                          child: Text( 
                            "welcome mom",
                            style: TextStyle(color: Color.fromRGBO(255, 17, 17, 1), fontSize: 30, fontWeight: FontWeight.bold)
                           
                          ),
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                // Remove background color or set it to transparent
                                color: Color.fromRGBO(11, 221, 151, 0.829), // Or any transparent color
                              )
                              ),
                        Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                // Remove background color or set it to transparent
                                color: Color.fromRGBO(11, 221, 151, 0.829), // Or any transparent color
                              )
                              ),
                        Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                // Remove background color or set it to transparent
                                color: Color.fromRGBO(11, 221, 151, 0.829), // Or any transparent color
                              )
                              ),
                                  
                                  
                                           ],
                    ),
           ],
              ),
            ),
            
        
      
      ],)
      ,
         
      
          
            
          
        
      ),
    );
  }

}
