import 'package:bottels_app/SqfLight%20functions/sqldb.dart';
import 'package:bottels_app/controller/Note/ViewController.dart';
import 'package:bottels_app/controller/testController.dart';
import 'package:bottels_app/core/constant/routes.dart';
import 'package:bottels_app/data/model/noteModel.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditController extends GetxController {

    SqlDb sqlDb = SqlDb();
   

   NoteModel? noteModel;


    bool isLoading = true;


        GlobalKey<FormState> formState = GlobalKey();

    TextEditingController name = TextEditingController();
    TextEditingController title = TextEditingController();
    TextEditingController color = TextEditingController();
    TextEditingController mobile = TextEditingController();



       String? id;


   // Update Data SQFLITE
    
    updateData(id) async {
        int response = await sqlDb.updateData
                 
                 ('''
                    UPDATE test SET
                                  name = "${name.text}",
                                  title = "${title.text}",
                                  color = "${color.text}",
                                  mobile = "${mobile.text}"
                                  WHERE id = "${id.toString()}"
                
                  
                ''');  

                if(response > 0) {
              print("Update Yessssss");
               ViewNoteController controller = Get.put(ViewNoteController());
                  controller.readData();
                  
                  Get.offAllNamed(AppRoute.viewNotes);
                }
               
                
                print("response update note ========**////============");
                print("$response");
      }


@override
  void onInit() {

  // ['testModel__'] ==> from viewController (goToEditPage)
    noteModel = Get.arguments['noteModel__']; // bsta2bl l arguments model data


  name   = TextEditingController();
  title  = TextEditingController();
  color  = TextEditingController();
  mobile = TextEditingController();

          
  // get data from db view to texts in edit
    id = noteModel!.id.toString();
    name.text =  noteModel!.name.toString();
    title.text =  noteModel!.title.toString();
    color.text =  noteModel!.color.toString();
    mobile.text =  noteModel!.mobile.toString();
   
      
    super.onInit();
  }
}

