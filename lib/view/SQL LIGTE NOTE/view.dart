import 'package:bottels_app/SqfLight%20functions/sqldb.dart';
import 'package:bottels_app/controller/Note/ViewController.dart';
import 'package:bottels_app/core/constant/routes.dart';
import 'package:bottels_app/data/model/noteModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewNote extends StatelessWidget {
  const ViewNote({super.key});

  @override
  Widget build(BuildContext context) {

    ViewNoteController controller = Get.put(ViewNoteController());

//     SqlDb sqlDb = SqlDb();
//     List note = [];

//      readData()async{
//        List<Map> response = await sqlDb.readData('SELECT * FROM test');
//        note.addAll(response);
    
//        return response;
  
// }





    
    

    return Scaffold(appBar: AppBar(
      title: const Text("View All Notes"),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(onPressed: (){

        controller.syncData();

      },  
        
           icon: const Icon(Icons.sync_rounded))
      
      ),
   

      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.toNamed(AppRoute.adddNote);
      },
      
       child: const Icon(Icons.add)),

      body: 
     // controller.isLoading == true ? const Center(child:  Text("Loading ..."))  :
      
       ListView(
         children: [
              Stack(
              
          
                children: [
       
               
                
                          GetBuilder<ViewNoteController>(builder: (controller) => 
                            ListView.builder( 
                                
                                  physics: const NeverScrollableScrollPhysics(),
                                     shrinkWrap: true,
                                
                                      itemCount: controller.note.length,
                                      itemBuilder: (context, index) =>
                 
                                     
                                           Card(
                                            
                                              child: ListTile(
                                                title:  Text(controller.note[index].name.toString()),
                                                subtitle:  Text(controller.note[index].title.toString()),
                                               leading: Text(controller.note[index].mobile.toString()),

                                                trailing: Row(mainAxisSize: MainAxisSize.min,
                                                     
                                                     children: [
                                                       IconButton(onPressed: () {  

                                                   controller.goToEditPage(
                                                  controller.note[index],
                                                   
                                                        );
                                                   
                                                 
                                                }, 
                                                icon: const Icon(Icons.edit_note_rounded),color: Colors.blue.shade300,
                                                ) ,

                                                 IconButton(onPressed: () async{  

                                                int response = await controller.sqlDb.deleteData("DELETE FROM test WHERE id = ${controller.note[index].id.toString()}");

                                                if(response > 0) {

                                              controller.note.removeWhere(
                                                (element) => element.id.toString() == controller.note[index].id.toString());
                                                    //  Get.offAllNamed(AppRoute.viewNotes);
                                                    controller.update();

                                                      print("========== deleted $response");
                                                      
                                                     

                                                   }
                                                   
                                                 
                                                }, 
                                                icon: const Icon(Icons.delete_forever),color: Colors.red,
                                                ) ,
                                                ],)


                                                ),
                                            
                                                                            
                                        ),
                                     
                                      
                                     
                 
                 
                                
                 
                                
                                ),
                          
                           ),
                               
                             
                          
                          
                          
                   
                 
                               
                             
  
                   
              
                   
                     
                ],
              ),
            ],
       ),

          // bottomNavigationBar: Container( color: Colors.green.shade300
            
          //   ,child: 
          
          //               MaterialButton(onPressed: () async{
          //               await  controller.sqlDb.myDeleteDataBase();
                      
          //               }, 
          //               child: Text("Delete My DataBase"),
          //               ),),
       
     
      
    );
  }


  
}

