
//all  varibles that are going to be used for logic and thi
import 'package:classapp1/pages/landingpage.dart';
import 'package:classapp1/pages/mychildpage.dart';
import 'package:classapp1/pages/todopage.dart';
import 'package:classapp1/pages/tracker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CounterModel extends ChangeNotifier{
  List <IconData>  navicons=[Iconsax.home,Iconsax.wallet,Iconsax.man,Iconsax.book,];
List <String> navTitle=["Home","Wallet","account","hello"];
String title="Home";
List <Widget> menuitems=[SecondPage(),todopage(), mychild(),tracker()];
int isselectedIndex=0;

   int _count=0;
   int get count=>_count;

   void increment(){
    _count++;
    notifyListeners();
   }
   int updateName(int index) {
     isselectedIndex = index;

     notifyListeners();
     return (index);
     }
}