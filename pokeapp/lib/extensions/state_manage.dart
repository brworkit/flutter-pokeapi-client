import 'package:flutter/material.dart';

mixin StateManager {


  onResumed() {
    print("onResumed");

  }

  onPaused() {
    print("onPaused");
    
  }

  onInactive() {
    print("onInactive");
    
  }

  onDetached() {
    print("onDetached");
    
  }
    
}