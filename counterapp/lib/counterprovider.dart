import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int count=0;
  void incrase(){
    count= count+1;
    notifyListeners();
  }
  void decrase(){
    count= count-1;
    notifyListeners();
  }

}