import 'package:bottels_app/core/class/crud.dart';
import 'package:bottels_app/linkapi.dart';

class NoteData {

Crud crud;
NoteData(this.crud);

syncronizeData(Map datas) async {

var response = await crud.postData(Applink.postTest, datas


//{
  // "name"  : name.toString(),
  // "title" : title.toString(),
  // "color" : color.toString(),
  // "mobile" : mobile.toString()  
  
  //}
  );
return response.fold((l) => l, (r) => r);
}


getData() async {

var response = await crud.postData(Applink.getTest, {});
return response.fold((l) => l, (r) => r);
}


}