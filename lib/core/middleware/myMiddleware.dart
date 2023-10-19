import 'package:bottels_app/core/constant/routes.dart';
import 'package:bottels_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMidlleware extends GetMiddleware{

  @override
  int? priority = 0;
  
  Myservices myservices = Get.find();


  @override
  RouteSettings? redirect(String? route) {
    //step 2 الأولويه لل 
     if(myservices.sharedPreferences.getString("step") == "2"){
         return const RouteSettings(name: AppRoute.homeScreeen);
        

    }
  
    if(myservices.sharedPreferences.getString("step") == "1"){
        return const RouteSettings(name: AppRoute.login);
    }

    

  return null;
  }
}