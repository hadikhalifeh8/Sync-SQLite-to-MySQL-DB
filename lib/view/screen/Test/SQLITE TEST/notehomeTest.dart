import 'package:bottels_app/SqfLight%20functions/sqldb.dart';
import 'package:flutter/material.dart';

class NoteHome extends StatelessWidget {
  const NoteHome({super.key});

  @override
  Widget build(BuildContext context) {
    SqlDb sqlDb = SqlDb(); // instance from class SqlDb


    return Scaffold(appBar: AppBar(title: Text("Note App"),centerTitle: true,),
    
    body: Container(padding: EdgeInsets.only(top: 150.0 ),
      child: Column(children: [
    
       Center(child:
        MaterialButton(onPressed: ()async{
         
          // int response {return 0 ->failed , or number of raw ->success} => eza l3amaleye success aw failed
            int response = await sqlDb.insertData("INSERT INTO 'test' ('name','title','color','mobile') VALUES ('NAME tHREE','RED','red','78745154') ");
            print(response);
        
        } ,
         child: Text("insert data"), color: Colors.red,),
        ),
        SizedBox(height: 10.0,),
    
          Center(child:
        MaterialButton(onPressed: ()async{ 
          
// int response {return 0 ->failed , or number of raw ->success} => eza l3amaleye success aw failed
        List<Map> response = await  sqlDb.readData("SELECT * FROM test");
        print(response);
        } 
        , child: Text("read data"), color: Colors.red,),
        ),
    

              Center(child:
        MaterialButton(onPressed: ()async{ 
          
// int response {return 0 ->failed , or number of raw ->success} => eza l3amaleye success aw failed
       int response = await  sqlDb.deleteData("DELETE FROM 'test' WHERE id = 55");
        print(response);
        } 
        , child: Text("delete data"), color: Colors.red,),
        ),


             Center(child:
        MaterialButton(onPressed: ()async{ 
          
// int response {return 0 ->failed , or number of raw ->success} => eza l3amaleye success aw failed
        int response = await  sqlDb.updateData("UPDATE 'test' set name = 'hassan' WHERE id = 3 ");
        print(response);
        } 
        , child: Text("update data"), color: Colors.red,),
        ),
        
      
      ],),
    ),
    
    );

  
  }
}