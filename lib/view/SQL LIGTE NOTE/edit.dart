

import 'package:bottels_app/controller/Note/editController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {

   EditController controller = Get.put(EditController());



    return Scaffold(
      appBar: AppBar(title: const Text("Update Note"),
        centerTitle: true,
      
      ),

      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: [
      
          Form(key: controller.formState,
            child: Column(
            children: [
             
              TextFormField(
                decoration: const InputDecoration(hintText: "Enter name"),
                controller: controller.name,
              ),
      
      
                TextFormField(
                   decoration: const InputDecoration(hintText: "Enter title"),
                controller: controller.title,
              ),
      
      
                TextFormField(
                   decoration: const InputDecoration(hintText: "Enter color"),
                controller: controller.color,
              ),


               TextFormField(
                   decoration: const InputDecoration(hintText: "Enter mobile"),
                controller: controller.mobile,
              ),

                Container(
                  padding: EdgeInsets.all(10.0),
                  child: 
                  
                  MaterialButton(onPressed: (){
                    controller.updateData(controller.noteModel!.id.toString());
                  },

                   textColor: Colors.white,
                   color: Colors.blue.shade300,
                   child: const Text("update Note"),
                   ))
      
     
            ],
          ),
          ),

        
        ],),
      ),
    
    );
  }
}