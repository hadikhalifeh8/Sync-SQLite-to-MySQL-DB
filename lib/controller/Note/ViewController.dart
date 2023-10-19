import 'package:bottels_app/SqfLight%20functions/sqldb.dart';
import 'package:bottels_app/controller/testController.dart';
import 'package:bottels_app/core/class/statusRequest.dart';
import 'package:bottels_app/core/constant/routes.dart';
import 'package:bottels_app/core/functions/handlingDataController.dart';
import 'package:bottels_app/data/datasource/remote/note_data.dart';
import 'package:bottels_app/data/model/noteModel.dart';
import 'package:flutter/cupertino.dart';


import 'package:get/get.dart';

class ViewNoteController extends GetxController {

  NoteData noteData = NoteData(Get.find());

  SqlDb sqlDb = SqlDb();
    List<NoteModel> note = [] ;
    
    
    String? id;
    String? nameS;
    String? titleS;
    String? colorS;
    String? mobileS;


     //TestController? testController;

    // bool isLoading = true;

    StatusRequest? statusRequest;

   
    


    GlobalKey<FormState> formState = GlobalKey();

    TextEditingController name = TextEditingController();
    TextEditingController title = TextEditingController();
    TextEditingController color = TextEditingController();
    TextEditingController mobile = TextEditingController();

     
      


    NoteModel? noteModel;



    // Get Data From SQFLITE
    Future readData()async{
      note.clear();
      update();
       List<Map> response = await sqlDb.readData('SELECT * FROM test');
        //  note.addAll(response);  // bs yjeeb ldata 
    
   List listNote = response ;
   note.addAll(listNote.map((e) => NoteModel.fromJson(e)));

       update();
    
       return response;
      }



   
 // GO TO UPDATE PAGE 
   goToEditPage(NoteModel noteModel){
   
    Get.toNamed(AppRoute.updatedNote, 
                arguments: {
               'noteModel__' : noteModel
              
              });
                
              //  print("Go To Page: id:${idS}, name:${nameS}, title:${titleS}, color:${colorS}, mobile:${mobileS}");
print("the  model is id: ${noteModel.id}, name: ${noteModel.name}, title: ${noteModel.title}, color: ${noteModel.color}, mobile ${noteModel.mobile}");
                        
   }


    // Sync Data from sqflite to mysql Database
      syncData() async {
       

          for(int i = 0; i < note.length ; i++)
          {
            Map datas ={
                   "id" : note[i].id.toString(),
                   "name" :note[i].name.toString(),
                   "title" : note[i].title.toString(),
                   "color" : note[i].color.toString(),
                   "mobile" :note[i].mobile.toString()
          };

              

        
        print("-*************** $datas");
      //  await readData();
       var response =  await noteData.syncronizeData(datas);
     
       print("***************##############************* Controler $response ");

     statusRequest = handlingData(response); // get data / or stausRquest (success /serverfailure / connection  failed ... /) 

     if(StatusRequest.success == statusRequest){
         
            if(response['status'] == "success")
      {
        
        
    print("Sync successful");
   
      note.remove(response);

    //to refresh directly when insert data

      }}
      else{
        statusRequest = StatusRequest.failure; // insert / update/ delete : لا يوجد تحديث / getdata : لا يوجد بيانات

             print("Sync failed");
      }
     }
      }



      @override
  void onInit() {
    readData();

    super.onInit();
  }



}