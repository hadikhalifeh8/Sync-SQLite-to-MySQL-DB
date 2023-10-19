import 'package:bottels_app/SqfLight%20functions/sqldb.dart';
import 'package:bottels_app/controller/Note/ViewController.dart';
import 'package:bottels_app/controller/testController.dart';
import 'package:bottels_app/core/constant/routes.dart';
import 'package:bottels_app/data/model/noteModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AdddNoteController extends GetxController {

  SqlDb sqlDb = SqlDb();
    List<NoteModel>note = [];

     TestController? testController;

    bool isLoading = true;
    


    GlobalKey<FormState> formState = GlobalKey();

    TextEditingController name = TextEditingController();
    TextEditingController title = TextEditingController();
    TextEditingController color = TextEditingController();
    TextEditingController mobile = TextEditingController();

        // Insert Data into SQFLITE
    insertData() async {
        int response = await sqlDb.insertData
                 
                 ('''
                
                  INSERT INTO 'test' ('name', 'title', 'color', 'mobile')
                  VALUES ("${name.text}", "${title.text}", "${color.text}", "${mobile.text}") 
               
                ''');  

                if(response > 0) {
                  
                  ViewNoteController controller = Get.put(ViewNoteController());
                  controller.readData();
                  
                  Get.offAllNamed(AppRoute.viewNotes);
                }
               
                
                print("response add note ========**////============");
                print("$response");
      }

      @override
  void onInit() {

     
  name= TextEditingController();
  title= TextEditingController();
  color= TextEditingController();
  mobile= TextEditingController();
   
    super.onInit();
  }


    @override
  void dispose() {
  name.dispose();
  title.dispose();
  color.dispose();
  mobile.dispose();
   
    super.dispose();
  }
}