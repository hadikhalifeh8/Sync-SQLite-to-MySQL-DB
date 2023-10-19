import 'package:bottels_app/core/class/statusRequest.dart';
import 'package:bottels_app/core/functions/handlingDataController.dart';
import 'package:bottels_app/data/datasource/remote/test_data.dart';
import 'package:bottels_app/data/model/noteModel.dart';
import 'package:flutter/cupertino.dart';


import 'package:get/get.dart';

class  TestController extends GetxController{
//1- Crud crud  = Crud(); // 2- بحط initial Binding (main / binding folder )


GlobalKey<FormState> formState = GlobalKey<FormState>();
  TestData testData = TestData(Get.find()); // Get.find() كل شي محفون
   late StatusRequest statusRequest ;



 List<NoteModel> data = [];

    

    late TextEditingController name;


   addData() async {
  try{
    // if(formState.currentState!.validate()) // for validation
    // {

  



     var response = await testData.postData(name.text); //loading هون خلص 

      print("***************##############************* Controler $response ");

     statusRequest = handlingData(response); // get data / or stausRquest (success /serverfailure / connection  failed ... /) 

    update();

     if(StatusRequest.success == statusRequest)
     {
      if(response['status'] == "success")
      {
        getData();
    print("success");
      

    //to refresh directly when insert data

      }
      else{
        statusRequest = StatusRequest.failure; // insert / update/ delete : لا يوجد تحديث / getdata : لا يوجد بيانات

             print("fails");
      }
     }
     
      update(); // Refresh 
    //}
  }
  
catch(_){
    // statusRequest = StatusRequest.serverException;
  }

   }


// get data function

     getData() async {
 update();
      data.clear(); //insert بس إعمل  update بمحي المعلومات القديه وبعمل 
    
     statusRequest = StatusRequest.loading;  // 1- loading (badda wa2et)

     update(); //insert بس إعمل  update بمحي المعلومات القديه وبعمل 

     var response = await testData.getData(); //loading هون خلص 

     print("***************##############************* Controler $response ");
     statusRequest = handlingData(response); // get data / or stausRquest (success /serverfailure / connection  failed ... /) 

     if(StatusRequest.success == statusRequest)
     { 
      if(response['status'] == "success")
      {
       //  data.addAll(response['data']);
       List datalist = response['data'];
       data.addAll(datalist.map((e) => NoteModel.fromJson(e)));
        
      }
      else{
        statusRequest = StatusRequest.failure; // insert / update/ delete : لا يوجد تحديث / getdata : لا يوجد بيانات
      }
     }
     
      update(); // Refresh 
   }


@override
  void onInit() {
   
   getData();

   name = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name = TextEditingController();
    super.dispose();
  }



  
}

