import 'package:flutter/material.dart';
import 'package:classapp1/widgets/infocard.dart';
class SlidingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          
          child: Container(
            width: double.infinity,
            color: Color.fromRGBO(206, 122, 48, 0.988),
            child: Column(
                  children:[
                    
           SizedBox(height: 50,
           ),
                  Infocard(name: "abubeker", profession: "foot baller",
                  ),
                  
                  ListTile(
                    leading: SizedBox(
                      height: 34,
                      width:34
                    ),
                    
                  ),
                  Image.asset('assets/BABU.png', // Replace with your actual image path
                          // Optional properties
                          width: 200.0, // Adjust as needed
                          height: 150.0, // Adjust as needed
                          fit: BoxFit.cover, // Controls how the image resizes within its container
                        ),
                
             ]
                  
            )
        ),
      
        
        );
      
        
  }
}