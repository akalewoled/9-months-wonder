import 'package:flutter/material.dart';
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:classapp1/counter_model.dart';

class CustomNavigationBar extends StatefulWidget{
  
    const CustomNavigationBar({Key? key, }) : super(key: key);

  @override
  _customNavigationBarState createState()=> _customNavigationBarState();
  

}



 class _customNavigationBarState extends State<CustomNavigationBar> {

  
@override
 Widget build(BuildContext context) {
   return Consumer<CounterModel>(

      builder:(context,value,child)=>
       Container( width: 300, height: 65,margin: const EdgeInsets.only(
      right: 24,
      left: 24,
      bottom: 24
    ),
    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(40),
    boxShadow:[
      BoxShadow(
        color: Colors.black.withAlpha(40),
        blurRadius: 20,
        spreadRadius: 10,
      )

    ]

),
 child: Row(
  
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  mainAxisSize: MainAxisSize.min,
  children: value.navicons.map(
    
    (icon){
      
    int index =value.navicons.indexOf(icon);
    

    print("index is $index");
  
    bool isselectd = value.isselectedIndex == index ;  

    return Material(
      color:Colors.transparent,
      
      child: InkWell(
        onTap: (){
          int index1=  value.updateName(index);

          Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => value.menuitems[index1]),
    ); 
    


        },
        child: Column(
          children:[
          Container( 
            width: 2,
            alignment:Alignment.center,margin:EdgeInsets.only(top:15,bottom:0,left: 35,right: 35 ),
                  
            child: Padding(
              padding: EdgeInsets.only(left: 0),
                    child: Icon(icon,color: isselectd? Colors.blue:Colors.grey,),
                    ),
                    ),
           Padding(
            
            padding: EdgeInsets.only(left: 0),
             child: 
             Text(value.navTitle[index],
                style: TextStyle(
                  color: isselectd? Colors.blue:Colors.grey,
                  fontSize: 12  ,
                ),
              ),
           ),
          ]  
          ),
      ),
    );

  } ).toList(),

 ),

  )

   );

 }

}

/**
 * 
 * final NavigationController controller;

  
  CustomNavigationBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationBar(
        
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) => controller.selectedIndex.value = index,
        destinations:  const [
          const NavigationDestination(icon: Icon(Iconsax.home,color: Colors.amber,), label: 'home'),
          const NavigationDestination(icon: Icon(Iconsax.chart_success), label: 'tracker'),
          const NavigationDestination(icon: Icon(Iconsax.archive_1), label: "todo"),
          const NavigationDestination(icon: Icon(Iconsax.user_octagon), label: "my Baby"),
        ],
      ),
      
    );
 */

