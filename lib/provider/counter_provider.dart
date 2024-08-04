import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CountProvider with ChangeNotifier{
  var counter = 0;

  void increaseCounter(){
    counter = counter+1;
    notifyListeners();
    }
    void decreaseCounter(){
    if(counter>=1){
    counter = counter-1;
    }
    else{
      Fluttertoast.showToast(
          msg: "Noo",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.green,
          fontSize: 16
      );
    }
    notifyListeners();
    }
}