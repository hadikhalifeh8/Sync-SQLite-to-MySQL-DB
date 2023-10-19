import 'package:bottels_app/core/class/crud.dart';
import 'package:bottels_app/linkapi.dart';

class TestData {

Crud crud;
TestData(this.crud);

postData(String name) async {

var response = await crud.postData(Applink.postTest, {"name": name});
return response.fold((l) => l, (r) => r);
}


getData() async {

var response = await crud.postData(Applink.getTest, {});
return response.fold((l) => l, (r) => r);
}


}