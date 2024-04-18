
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:classapp1/counter_model.dart';
import 'package:classapp1/pages/landingpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   

  @override
  Widget build(BuildContext context) {
 
    return Consumer<CounterModel>(
      builder:(context,value,child)=>
      Scaffold(
      body: Container(
        
        width:double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin:Alignment.topCenter,
            colors: [
            Colors.orange[900]!, // Adjust shades for desired orange
            Colors.orange[800]!,
            Colors.orange[400]!,
          ],
          )
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: <Widget >[
          SizedBox(height: 40,),
           Container(
            margin: EdgeInsets.only(right: 6.0),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:<Widget>[

              Text("        welcome!  ",textAlign: TextAlign.center,style: TextStyle (decoration: TextDecoration.none,color: Colors.white,fontSize: 40,fontFamily: 'Oswald')),
              SizedBox(height: 10,),
              Text("      name : fikiremariyam ",style: TextStyle (decoration: TextDecoration.none,color: Colors.white,fontSize: 18)),
              ],
              ),
              ), 
              SizedBox(height: 20,),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),

 
                ),
                child: Padding(
                 padding: EdgeInsets.all(20.0), // Adjust padding values as needed
                 child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [BoxShadow(
                          color: Color.fromRGBO(225, 95, 27, 3),
                          blurRadius: 20,
                          offset: Offset(0,10),

                        )]

                        ),
                        child:Column(
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border( bottom:BorderSide(color: Colors.green[200]!))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "name",
                                  hintStyle: TextStyle(color: Colors.green),
                                  border:InputBorder.none
                                ),
                              ),
                            ),
                                 Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border( bottom:BorderSide(color: Colors.green[200]!))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "pass",
                                  hintStyle: TextStyle(color: Colors.green),
                                  border:InputBorder.none
                                ),
                              ),
                            ),
                            SizedBox(height: 40,),
                            Text("Forgot password",style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 40,),
                            
                       Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                // Remove background color or set it to transparent
                                color: Color.fromRGBO(225, 95, 27, 3), // Or any transparent color
                              ),
                              child: Center(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
                                    
                                  },
                                  child: Text(
                                    'Log in', 
                                    style: TextStyle( // Customize text style (optional)
                                      color: Colors.white, // Change text color as needed
                                      fontSize: 16.0, // Adjust font size as desired
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // end of columun )
                            
                          ],
                      
                      ),
                      
                    
                    
                    
                    
                    )
                  ],
                 ),
                 )
              
              ,
              )
       )
        ],
      ),
    
    
    )
    )
    );

    
    
  }
}
