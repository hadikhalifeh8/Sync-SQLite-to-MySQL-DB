import 'package:bottels_app/controller/testController.dart';
import 'package:bottels_app/core/class/handlingDataView.dart';
import 'package:bottels_app/core/class/statusRequest.dart';
import 'package:bottels_app/core/constant/Colors.dart';
import 'package:bottels_app/view/widget/Test/customTextFormAuth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  TestController controller = Get.put(TestController());

    return Scaffold(appBar: AppBar(centerTitle: true, title: const Text("Add Category"),),

    body: GetBuilder<TestController>(builder: (controller) => 
   

    Column( 

      
          
          children: [
            Form(
                  key: controller.formState,


              child: Column(
                children: [


                   Container(alignment: Alignment.topRight,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.sync))),

                  Container(child:
                        
                  CustomTextFormAuth(hintText: "insert a namei", 
                  labelText: "name",
                   mycontroller: controller.name
                   ),
                        
                   ),
                  
                ],
              ),
            ),
        
             MaterialButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
             color: Colors.cyan.shade200,
             onPressed: (){
              controller.addData();
             },
             child: Text("submit"),
             ),
   
             Divider(),
             
          HandlingDataView(statusRequest: 
                        controller.statusRequest,
                 
                  widget:       Expanded(
                                            
                                               child: 
                                                 Card(
                                                  
                                                   child: ListView.builder(
                                                      shrinkWrap: true,
                                                       
                                                     
                                                                                   
                                                       itemCount: controller.data.length,
                                                         itemBuilder: (context, index) => Container(
                                                           padding: EdgeInsets.all(15.0),
                                                              child: ListTile(
                                                        
                                                              shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(20.0),
                                                                                              side: BorderSide(width: 2),
                                                                               ),
                                                       title: Row(
                                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                                              children: [
                                                   Text(controller.data[index].id.toString()),
                                                   SizedBox(width: 5,),
                                                   Text(controller.data[index].name.toString()),
                                                                                              ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  )),
                                                                              
                                                                            
                                             ),)
                                       
                
                
                
                ]),
   ),
            
  
  
    
    );
  }
  }


