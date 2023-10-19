
import 'package:bottels_app/controller/Note/ViewController.dart';
import 'package:bottels_app/controller/Note/addController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {

   AdddNoteController controller = Get.put(AdddNoteController());

 





    return Scaffold(
      appBar: AppBar(title: const Text("Add Note"),
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
                    controller.insertData();
                  },
                   child: const Text("add Note"),
                   textColor: Colors.white,
                   color: Colors.blue.shade300,
                   ))
      
     
            ],
          ),
          ),

        
        ],),
      ),
    
    );
  }
}